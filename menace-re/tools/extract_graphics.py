#!/usr/bin/env python3
"""
Extract and convert Amiga graphics from Menace
Amiga uses planar bitmap format - each bitplane is stored separately
"""

import sys
from pathlib import Path
from PIL import Image
import numpy as np

# Common Amiga palette (can be overridden by game)
DEFAULT_PALETTE = [
    (0x00, 0x00, 0x00),  # 0: Black
    (0xFF, 0xFF, 0xFF),  # 1: White  
    (0xFF, 0x00, 0x00),  # 2: Red
    (0x00, 0xFF, 0x00),  # 3: Green
    (0x00, 0x00, 0xFF),  # 4: Blue
    (0xFF, 0xFF, 0x00),  # 5: Yellow
    (0xFF, 0x00, 0xFF),  # 6: Magenta
    (0x00, 0xFF, 0xFF),  # 7: Cyan
    (0x80, 0x80, 0x80),  # 8: Gray
    (0xC0, 0xC0, 0xC0),  # 9: Light Gray
    (0x80, 0x00, 0x00),  # 10: Dark Red
    (0x00, 0x80, 0x00),  # 11: Dark Green
    (0x00, 0x00, 0x80),  # 12: Dark Blue
    (0x80, 0x80, 0x00),  # 13: Olive
    (0x80, 0x00, 0x80),  # 14: Purple
    (0x00, 0x80, 0x80),  # 15: Teal
]

def planar_to_chunky(planes, width, height):
    """
    Convert Amiga planar bitmap to chunky (standard) format
    planes: list of bitplane data (each is a 2D numpy array)
    Returns: 2D array of pixel values
    """
    num_planes = len(planes)
    pixels = np.zeros((height, width), dtype=np.uint8)
    
    for plane_idx, plane in enumerate(planes):
        bit_value = 1 << plane_idx
        pixels |= (plane * bit_value)
    
    return pixels

def extract_bitplane(data, width, height, offset=0):
    """Extract a single bitplane from raw data"""
    bytes_per_row = width // 8
    plane_size = bytes_per_row * height
    
    if offset + plane_size > len(data):
        return None
    
    plane_data = data[offset:offset + plane_size]
    plane = np.zeros((height, width), dtype=np.uint8)
    
    for y in range(height):
        for x in range(width):
            byte_offset = y * bytes_per_row + x // 8
            bit_offset = 7 - (x % 8)
            
            if byte_offset < len(plane_data):
                byte_val = plane_data[byte_offset]
                bit_val = (byte_val >> bit_offset) & 1
                plane[y, x] = bit_val
    
    return plane

def try_extract_image(data, width, height, num_bitplanes, offset=0, palette=None):
    """Try to extract an image with given parameters"""
    if palette is None:
        palette = DEFAULT_PALETTE[:2**num_bitplanes]
    
    # Extract bitplanes
    planes = []
    plane_size = (width // 8) * height
    
    for i in range(num_bitplanes):
        plane_offset = offset + (i * plane_size)
        plane = extract_bitplane(data, width, height, plane_offset)
        if plane is None:
            return None
        planes.append(plane)
    
    # Convert to chunky format
    pixels = planar_to_chunky(planes, width, height)
    
    # Create PIL image
    img = Image.new('RGB', (width, height))
    img_pixels = img.load()
    
    for y in range(height):
        for x in range(width):
            color_idx = pixels[y, x]
            if color_idx < len(palette):
                img_pixels[x, y] = palette[color_idx]
            else:
                img_pixels[x, y] = (255, 0, 255)  # Magenta for out of range
    
    return img

def scan_for_graphics(adf_file, output_dir):
    """Scan the ADF for likely graphics data"""
    with open(adf_file, 'rb') as f:
        data = f.read()
    
    output_dir = Path(output_dir)
    output_dir.mkdir(exist_ok=True)
    
    # Common Amiga screen dimensions
    configs = [
        # (width, height, bitplanes, description)
        (320, 200, 4, 'Standard Low-Res 16 colors'),
        (320, 256, 4, 'PAL Low-Res 16 colors'),
        (320, 200, 5, 'Standard Low-Res 32 colors'),
        (320, 256, 5, 'PAL Low-Res 32 colors'),
        (640, 200, 4, 'Hi-Res 16 colors'),
        (160, 200, 4, 'Low-Res sprites'),
        (16, 16, 4, 'Small sprites'),
        (32, 32, 4, 'Medium sprites'),
        (48, 48, 4, 'Large sprites'),
    ]
    
    print(f"Scanning {adf_file.name} for graphics...")
    print("=" * 60)
    
    found_count = 0
    
    # Scan at various offsets
    scan_offsets = list(range(0, len(data), 8192))  # Every 8KB
    
    for width, height, bitplanes, desc in configs:
        total_size = (width // 8) * height * bitplanes
        
        print(f"\nLooking for {desc} ({width}x{height}x{bitplanes})...")
        print(f"  Expected size: {total_size} bytes")
        
        found_for_config = 0
        
        for offset in scan_offsets:
            if offset + total_size > len(data):
                continue
            
            # Quick check: does this look like graphics?
            chunk = data[offset:offset + total_size]
            zero_count = chunk.count(0)
            ff_count = chunk.count(0xff)
            
            # Graphics typically have moderate variance
            if zero_count > total_size * 0.95 or ff_count > total_size * 0.95:
                continue
            
            # Try to extract
            try:
                img = try_extract_image(data, width, height, bitplanes, offset)
                if img:
                    # Save image
                    filename = f"gfx_{offset:06x}_{width}x{height}x{bitplanes}.png"
                    img.save(output_dir / filename)
                    found_for_config += 1
                    found_count += 1
                    
                    if found_for_config <= 3:  # Only print first few
                        print(f"    ✓ Found @ 0x{offset:06x} -> {filename}")
            except Exception as e:
                pass
        
        if found_for_config > 3:
            print(f"    ... and {found_for_config - 3} more")
    
    print("\n" + "=" * 60)
    print(f"Extracted {found_count} potential graphics")
    print(f"Output: {output_dir}/")
    
    return found_count

def main():
    if len(sys.argv) < 2:
        print("Usage: extract_graphics.py <adf_file> [output_dir]")
        sys.exit(1)
    
    adf_file = Path(sys.argv[1])
    output_dir = Path(sys.argv[2]) if len(sys.argv) > 2 else Path('extracted_gfx')
    
    scan_for_graphics(adf_file, output_dir)

if __name__ == '__main__':
    main()

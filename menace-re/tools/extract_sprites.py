#!/usr/bin/env python3
"""
Extract individual sprites from Menace ADF
Looks for small graphics (16x16, 32x32, 48x48, etc.)
"""

import sys
import struct
from pathlib import Path
from PIL import Image
import numpy as np

# Amiga default palette (OCS)
AMIGA_PALETTE_16 = [
    (0x00, 0x00, 0x00),  # 0: Black
    (0x00, 0x00, 0xAA),  # 1: Blue
    (0x00, 0xAA, 0x00),  # 2: Green
    (0x00, 0xAA, 0xAA),  # 3: Cyan
    (0xAA, 0x00, 0x00),  # 4: Red
    (0xAA, 0x00, 0xAA),  # 5: Magenta
    (0xAA, 0x55, 0x00),  # 6: Brown
    (0xAA, 0xAA, 0xAA),  # 7: Light Gray
    (0x55, 0x55, 0x55),  # 8: Dark Gray
    (0x55, 0x55, 0xFF),  # 9: Light Blue
    (0x55, 0xFF, 0x55),  # 10: Light Green
    (0x55, 0xFF, 0xFF),  # 11: Light Cyan
    (0xFF, 0x55, 0x55),  # 12: Light Red
    (0xFF, 0x55, 0xFF),  # 13: Light Magenta
    (0xFF, 0xFF, 0x55),  # 14: Yellow
    (0xFF, 0xFF, 0xFF),  # 15: White
]

def extract_bitplane(data, width, height, offset=0):
    """Extract a single bitplane from raw data"""
    bytes_per_row = (width + 7) // 8
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

def planar_to_chunky(planes, width, height):
    """Convert Amiga planar bitmap to chunky format"""
    num_planes = len(planes)
    pixels = np.zeros((height, width), dtype=np.uint8)
    
    for plane_idx, plane in enumerate(planes):
        if plane is not None:
            bit_value = 1 << plane_idx
            pixels |= (plane * bit_value)
    
    return pixels

def extract_sprite(data, width, height, num_bitplanes, offset=0, palette=None):
    """Extract a single sprite"""
    if palette is None:
        palette = AMIGA_PALETTE_16[:2**num_bitplanes]
    
    # Extract bitplanes
    planes = []
    plane_size = ((width + 7) // 8) * height
    
    for i in range(num_bitplanes):
        plane_offset = offset + (i * plane_size)
        plane = extract_bitplane(data, width, height, plane_offset)
        if plane is None:
            return None
        planes.append(plane)
    
    # Convert to chunky
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
                img_pixels[x, y] = (255, 0, 255)
    
    return img

def is_sprite_data(data, width, height, bitplanes):
    """Heuristic to check if data looks like a sprite"""
    total_size = ((width + 7) // 8) * height * bitplanes
    
    if total_size > len(data):
        return False
    
    # Check for reasonable variance (not all zeros, not all 0xFF)
    chunk = data[:total_size]
    zero_count = chunk.count(0)
    ff_count = chunk.count(0xff)
    
    # Sprites should have some detail
    if zero_count > total_size * 0.95:
        return False
    if ff_count > total_size * 0.95:
        return False
    
    # Should have reasonable entropy
    unique_bytes = len(set(chunk))
    if unique_bytes < 3:
        return False
    
    return True

def scan_for_sprites(adf_file, output_dir, sizes=None):
    """Scan ADF for sprite-sized graphics"""
    if sizes is None:
        sizes = [
            (16, 16, 4, "Small sprites"),
            (32, 32, 4, "Medium sprites"),
            (16, 16, 5, "Small sprites 32-color"),
            (32, 32, 5, "Medium sprites 32-color"),
            (48, 48, 4, "Large sprites"),
            (64, 64, 4, "Very large sprites"),
            (24, 24, 4, "Odd-sized sprites"),
        ]
    
    with open(adf_file, 'rb') as f:
        data = f.read()
    
    output_dir = Path(output_dir)
    output_dir.mkdir(exist_ok=True)
    
    print(f"Scanning {adf_file.name} for sprites...")
    print("=" * 60)
    
    total_found = 0
    
    for width, height, bitplanes, desc in sizes:
        total_size = ((width + 7) // 8) * height * bitplanes
        print(f"\n{desc} ({width}x{height}x{bitplanes}, {total_size} bytes)...")
        
        found = 0
        
        # Scan at smaller intervals for sprites (every 512 bytes)
        for offset in range(0, len(data) - total_size, 512):
            if is_sprite_data(data[offset:], width, height, bitplanes):
                try:
                    img = extract_sprite(data, width, height, bitplanes, offset)
                    if img:
                        # Save with unique name
                        filename = f"sprite_{width}x{height}x{bitplanes}_{offset:06x}.png"
                        img.save(output_dir / filename)
                        found += 1
                        total_found += 1
                        
                        if found <= 3:
                            print(f"  ✓ Found @ 0x{offset:06x} -> {filename}")
                except Exception as e:
                    pass
        
        if found > 3:
            print(f"  ... and {found - 3} more")
        elif found == 0:
            print(f"  None found")
    
    print("\n" + "=" * 60)
    print(f"Extracted {total_found} sprites to {output_dir}/")
    return total_found

def main():
    if len(sys.argv) < 2:
        print("Usage: extract_sprites.py <adf_file> [output_dir]")
        sys.exit(1)
    
    adf_file = Path(sys.argv[1])
    output_dir = Path(sys.argv[2]) if len(sys.argv) > 2 else Path('sprites')
    
    if not adf_file.exists():
        print(f"Error: {adf_file} not found")
        sys.exit(1)
    
    count = scan_for_sprites(adf_file, output_dir)
    
    if count > 0:
        print("\nNext steps:")
        print(f"1. Look through {output_dir}/ for recognizable sprites")
        print("2. Create HTML viewer:")
        print(f"   python3 tools/sprite_viewer.py {output_dir}/ --html")
    else:
        print("\nNo sprites found with current heuristics.")
        print("The game might use different sprite storage or compression.")

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""
Convert Amiga sprite data from assembly source files to PNG.
Based on the format used in Menace (ships.s, MINE.S, BONUS.S).

Format: DC.W (define word) hex values representing bitplanes
"""

import sys
from pathlib import Path
from PIL import Image
import re

# Menace color palette (approximated from gameplay screenshots)
MENACE_PALETTE = [
    (0, 0, 0),         # 0: Transparent/Black
    (255, 255, 255),   # 1: White
    (192, 192, 192),   # 2: Light gray
    (128, 128, 128),   # 3: Gray
    (255, 0, 0),       # 4: Red
    (0, 255, 0),       # 5: Green
    (0, 0, 255),       # 6: Blue
    (255, 255, 0),     # 7: Yellow
    (255, 128, 0),     # 8: Orange
    (0, 255, 255),     # 9: Cyan
    (255, 0, 255),     # 10: Magenta
    (128, 64, 0),      # 11: Brown
    (64, 255, 64),     # 12: Light green
    (64, 64, 255),     # 13: Light blue
    (255, 192, 192),   # 14: Pink
    (192, 192, 255),   # 15: Lavender
]

def parse_dc_w_file(filepath):
    """
    Parse a .S file containing DC.W sprite data.
    Returns list of 16-bit words (integers).
    """
    words = []
    
    with open(filepath, 'r', encoding='latin-1', errors='ignore') as f:
        for line in f:
            # Look for DC.W lines
            if 'DC.W' in line or 'dc.w' in line:
                # Extract hex values: $XXXX,$XXXX,...
                hex_values = re.findall(r'\$([0-9A-Fa-f]{4})', line)
                for hex_val in hex_values:
                    words.append(int(hex_val, 16))
    
    return words

def convert_bitplanes_to_pixels(words, width, height, num_planes):
    """
    Convert bitplane data to pixel indices.
    
    Args:
        words: List of 16-bit words
        width: Sprite width in pixels
        height: Sprite height in pixels
        num_planes: Number of bitplanes (2, 3, or 4)
    
    Returns:
        2D list of pixel color indices
    """
    pixels = [[0 for _ in range(width)] for _ in range(height)]
    
    words_per_line = width // 16  # 16 pixels per word
    words_per_plane = words_per_line * height
    
    # Check if we have enough data
    total_words_needed = words_per_plane * num_planes
    if len(words) < total_words_needed:
        print(f"Warning: Not enough data. Need {total_words_needed}, have {len(words)}")
        return pixels
    
    # Process each row
    for y in range(height):
        for word_x in range(words_per_line):
            x_offset = word_x * 16
            
            # Get words from each bitplane for this position
            base_index = y * words_per_line + word_x
            plane_words = []
            for plane in range(num_planes):
                word_index = base_index + (plane * words_per_plane)
                if word_index < len(words):
                    plane_words.append(words[word_index])
                else:
                    plane_words.append(0)
            
            # Extract pixels from this word group
            for bit in range(16):
                x = x_offset + (15 - bit)  # MSB first
                if x < width:
                    # Combine bits from all planes
                    color_index = 0
                    for plane_num, plane_word in enumerate(plane_words):
                        if plane_word & (1 << bit):
                            color_index |= (1 << plane_num)
                    pixels[y][x] = color_index
    
    return pixels

def create_sprite_png(pixels, palette, output_path):
    """Create PNG from pixel data."""
    height = len(pixels)
    width = len(pixels[0]) if height > 0 else 0
    
    if width == 0 or height == 0:
        print(f"Error: Invalid dimensions {width}x{height}")
        return False
    
    # Create indexed color image
    img = Image.new('P', (width, height))
    img.putpalette([val for color in palette for val in color])
    
    # Set pixel data
    for y in range(height):
        for x in range(width):
            img.putpixel((x, y), pixels[y][x])
    
    img.save(output_path)
    print(f"Created: {output_path} ({width}x{height})")
    return True

def convert_mine_sprites(source_file, output_dir):
    """Convert mine sprites (MINE.S format)."""
    words = parse_dc_w_file(source_file)
    
    # Mine specs from analysis:
    # 16 pixels wide, 24 pixels high, 4 bitplanes
    # Multiple animation frames stacked vertically
    
    width = 16
    height = 24
    num_planes = 4
    
    words_per_frame = (width // 16) * height * num_planes
    num_frames = len(words) // words_per_frame
    
    print(f"\nMine sprites: {len(words)} words, {num_frames} frames estimated")
    
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    
    for frame in range(num_frames):
        start = frame * words_per_frame
        end = start + words_per_frame
        frame_words = words[start:end]
        
        if len(frame_words) < words_per_frame:
            break
        
        pixels = convert_bitplanes_to_pixels(frame_words, width, height, num_planes)
        output_path = output_dir / f"mine_frame{frame:02d}.png"
        create_sprite_png(pixels, MENACE_PALETTE, output_path)

def convert_bonus_sprites(source_file, output_dir):
    """Convert bonus/powerup sprites (BONUS.S format)."""
    words = parse_dc_w_file(source_file)
    
    # Bonus specs: Similar to mines
    # These appear to be 32 pixels wide based on the DC.W count
    width = 32
    height = 24
    num_planes = 4
    
    words_per_frame = (width // 16) * height * num_planes
    num_frames = len(words) // words_per_frame
    
    print(f"\nBonus sprites: {len(words)} words, {num_frames} frames estimated")
    
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    
    for frame in range(num_frames):
        start = frame * words_per_frame
        end = start + words_per_frame
        frame_words = words[start:end]
        
        if len(frame_words) < words_per_frame:
            break
        
        pixels = convert_bitplanes_to_pixels(frame_words, width, height, num_planes)
        output_path = output_dir / f"bonus_frame{frame:02d}.png"
        create_sprite_png(pixels, MENACE_PALETTE, output_path)

def main():
    if len(sys.argv) < 2:
        print("Usage: convert_amiga_sprites.py <source_file.S> [output_dir]")
        print()
        print("Converts Amiga sprite data from assembly source to PNG.")
        print()
        print("Examples:")
        print("  convert_amiga_sprites.py MINE.S extracted_mines/")
        print("  convert_amiga_sprites.py BONUS.S extracted_bonus/")
        sys.exit(1)
    
    source_file = Path(sys.argv[1])
    output_dir = Path(sys.argv[2]) if len(sys.argv) > 2 else Path(f"extracted_{source_file.stem.lower()}")
    
    if not source_file.exists():
        print(f"Error: File not found: {source_file}")
        sys.exit(1)
    
    print(f"Converting: {source_file}")
    print(f"Output to: {output_dir}")
    
    # Determine sprite type from filename
    filename = source_file.stem.upper()
    
    if 'MINE' in filename:
        convert_mine_sprites(source_file, output_dir)
    elif 'BONUS' in filename:
        convert_bonus_sprites(source_file, output_dir)
    else:
        print("Unknown sprite type. Trying generic conversion...")
        # Default: 32x24, 4 bitplanes
        words = parse_dc_w_file(source_file)
        width, height, num_planes = 32, 24, 4
        words_per_frame = (width // 16) * height * num_planes
        num_frames = len(words) // words_per_frame
        
        print(f"Generic: {len(words)} words, {num_frames} frames @ {width}x{height}x{num_planes}bp")
        
        output_dir.mkdir(parents=True, exist_ok=True)
        for frame in range(num_frames):
            start = frame * words_per_frame
            end = start + words_per_frame
            frame_words = words[start:end]
            if len(frame_words) >= words_per_frame:
                pixels = convert_bitplanes_to_pixels(frame_words, width, height, num_planes)
                output_path = output_dir / f"sprite_frame{frame:02d}.png"
                create_sprite_png(pixels, MENACE_PALETTE, output_path)

if __name__ == '__main__':
    main()

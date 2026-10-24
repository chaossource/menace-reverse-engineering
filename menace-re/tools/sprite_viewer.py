#!/usr/bin/env python3
"""
Interactive sprite viewer for Menace graphics
Helps identify which extracted files are which game objects
"""

import sys
import os
from pathlib import Path
from PIL import Image
import argparse

def create_sprite_sheet(image_dir, output_file, pattern="*32x32*.png", cols=10):
    """Create a sprite sheet from matching files"""
    files = sorted(Path(image_dir).glob(pattern))
    
    if not files:
        print(f"No files matching {pattern}")
        return None
    
    print(f"Found {len(files)} files matching {pattern}")
    
    # Load first image to get dimensions
    first_img = Image.open(files[0])
    sprite_w, sprite_h = first_img.size
    
    # Calculate sheet dimensions
    rows = (len(files) + cols - 1) // cols
    sheet_w = sprite_w * cols
    sheet_h = sprite_h * rows
    
    # Create sprite sheet
    sheet = Image.new('RGB', (sheet_w, sheet_h), (32, 32, 32))
    
    for idx, file in enumerate(files):
        img = Image.open(file)
        x = (idx % cols) * sprite_w
        y = (idx // cols) * sprite_h
        sheet.paste(img, (x, y))
    
    sheet.save(output_file)
    print(f"Created sprite sheet: {output_file}")
    print(f"  Dimensions: {sheet_w}x{sheet_h}")
    print(f"  Grid: {cols}x{rows}")
    return output_file

def analyze_sprites(image_dir):
    """Analyze extracted sprites and categorize them"""
    print("=" * 60)
    print("SPRITE ANALYSIS")
    print("=" * 60)
    
    all_files = list(Path(image_dir).glob("*.png"))
    print(f"\nTotal files: {len(all_files)}")
    
    # Group by dimensions
    by_size = {}
    for f in all_files:
        try:
            img = Image.open(f)
            size_key = f"{img.width}x{img.height}"
            if size_key not in by_size:
                by_size[size_key] = []
            by_size[size_key].append(f)
        except Exception as e:
            print(f"Error reading {f}: {e}")
    
    print("\nSprites by size:")
    for size, files in sorted(by_size.items()):
        count = len(files)
        print(f"  {size:15s}: {count:4d} files")
        
        # These are likely actual sprites
        w, h = map(int, size.split('x'))
        if 16 <= w <= 48 and 16 <= h <= 48:
            print(f"    ^ Likely game sprites (good size for ship/enemies)")
    
    return by_size

def find_likely_ship(image_dir):
    """Try to identify the player ship sprite"""
    print("\n" + "=" * 60)
    print("SEARCHING FOR PLAYER SHIP")
    print("=" * 60)
    
    # Player ship is likely 16x16 or 32x32
    candidates = []
    
    for pattern in ["*16x16*.png", "*32x32*.png"]:
        files = list(Path(image_dir).glob(pattern))
        
        for f in files:
            img = Image.open(f)
            pixels = list(img.getdata())
            
            # Convert to grayscale for analysis
            if img.mode == 'RGB':
                gray_pixels = [r * 0.299 + g * 0.587 + b * 0.114 
                              for r, g, b in pixels]
            else:
                continue
            
            # Calculate metrics
            non_black = sum(1 for g in gray_pixels if g > 10)
            coverage = non_black / len(gray_pixels)
            
            # Ship should have reasonable coverage (not empty, not full)
            if 0.1 < coverage < 0.8:
                avg_brightness = sum(gray_pixels) / len(gray_pixels)
                candidates.append((f, coverage, avg_brightness))
    
    # Sort by coverage (ships tend to have medium coverage)
    candidates.sort(key=lambda x: abs(x[1] - 0.35))
    
    print(f"\nFound {len(candidates)} potential ship sprites:")
    for f, coverage, brightness in candidates[:10]:
        print(f"  {f.name:40s} coverage: {coverage:.2f}, brightness: {brightness:.1f}")
    
    return candidates

def create_preview_html(image_dir, output_file="sprite_preview.html"):
    """Create an HTML preview of all sprites"""
    print("\n" + "=" * 60)
    print("CREATING HTML PREVIEW")
    print("=" * 60)
    
    all_files = sorted(Path(image_dir).glob("*.png"))
    
    html = """<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menace Sprite Viewer</title>
    <style>
        body {
            background: #1a1a1a;
            color: #fff;
            font-family: monospace;
            padding: 20px;
        }
        h1 { color: #0f0; }
        .sprite-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
            gap: 10px;
            margin-top: 20px;
        }
        .sprite-item {
            background: #2a2a2a;
            padding: 10px;
            text-align: center;
            border: 1px solid #444;
        }
        .sprite-item:hover {
            border-color: #0f0;
            background: #3a3a3a;
        }
        .sprite-item img {
            image-rendering: pixelated;
            image-rendering: crisp-edges;
            max-width: 100%;
            background: #000;
            padding: 5px;
        }
        .sprite-name {
            font-size: 10px;
            color: #888;
            margin-top: 5px;
            word-wrap: break-word;
        }
        .section {
            margin: 30px 0;
            border-top: 2px solid #444;
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <h1>🎮 Menace - Extracted Sprites</h1>
    <p>Total sprites: """ + str(len(all_files)) + """</p>
"""
    
    # Group by size
    by_size = {}
    for f in all_files:
        try:
            img = Image.open(f)
            size_key = f"{img.width}x{img.height}"
            if size_key not in by_size:
                by_size[size_key] = []
            by_size[size_key].append(f)
        except:
            pass
    
    # Create sections for each size
    for size in sorted(by_size.keys()):
        files = by_size[size]
        html += f"""
    <div class="section">
        <h2>{size} ({len(files)} sprites)</h2>
        <div class="sprite-grid">
"""
        for f in files[:100]:  # Limit to 100 per section
            rel_path = f.name
            html += f"""
            <div class="sprite-item">
                <img src="{rel_path}" alt="{rel_path}">
                <div class="sprite-name">{rel_path}</div>
            </div>
"""
        if len(files) > 100:
            html += f"<p>... and {len(files) - 100} more</p>"
        
        html += """
        </div>
    </div>
"""
    
    html += """
</body>
</html>
"""
    
    output_path = Path(image_dir) / output_file
    with open(output_path, 'w') as f:
        f.write(html)
    
    print(f"Created: {output_path}")
    print(f"Open this in a browser to view all sprites!")
    return output_path

def main():
    parser = argparse.ArgumentParser(description='Analyze and view Menace sprites')
    parser.add_argument('image_dir', help='Directory with extracted graphics')
    parser.add_argument('--html', action='store_true', help='Create HTML preview')
    parser.add_argument('--sheet', help='Create sprite sheet (e.g., *32x32*.png)')
    parser.add_argument('--cols', type=int, default=10, help='Columns in sprite sheet')
    
    args = parser.parse_args()
    
    if not os.path.exists(args.image_dir):
        print(f"Error: {args.image_dir} not found")
        return 1
    
    # Always do basic analysis
    by_size = analyze_sprites(args.image_dir)
    find_likely_ship(args.image_dir)
    
    # Optional outputs
    if args.html:
        create_preview_html(args.image_dir)
    
    if args.sheet:
        output = f"sprite_sheet_{args.sheet.replace('*', '').replace('.png', '')}.png"
        create_sprite_sheet(args.image_dir, output, args.sheet, args.cols)
    
    print("\n" + "=" * 60)
    print("RECOMMENDATIONS")
    print("=" * 60)
    print("\n1. Create HTML preview:")
    print(f"   python3 {sys.argv[0]} {args.image_dir} --html")
    print(f"   Then open extracted_gfx/sprite_preview.html in browser")
    print("\n2. Create sprite sheets for common sizes:")
    print(f"   python3 {sys.argv[0]} {args.image_dir} --sheet '*32x32*.png'")
    print(f"   python3 {sys.argv[0]} {args.image_dir} --sheet '*16x16*.png'")
    print("\n3. Look for:")
    print("   - Player ship: Sleek spaceship shape")
    print("   - Enemies: Organic/biological creatures")
    print("   - Bullets: Small projectiles")
    print("   - Powerups: Icons/items")

if __name__ == '__main__':
    main()

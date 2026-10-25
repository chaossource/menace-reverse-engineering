#!/usr/bin/env python3
"""
Filter extracted sprites to find likely real game graphics
Uses stricter heuristics to reduce false positives
"""

import sys
from pathlib import Path
from PIL import Image
import shutil

def analyze_sprite(image_path):
    """Analyze sprite to determine if it's likely real game graphics"""
    try:
        img = Image.open(image_path)
        pixels = list(img.getdata())
        
        if not pixels:
            return False, 0
        
        # Convert to simple format for analysis
        if img.mode == 'RGB':
            # Count unique colors
            unique_colors = len(set(pixels))
            
            # Calculate black pixels
            black_pixels = sum(1 for r, g, b in pixels if r < 10 and g < 10 and b < 10)
            black_ratio = black_pixels / len(pixels)
            
            # Calculate color variance
            color_variance = unique_colors / len(pixels)
            
            # Real sprites typically have:
            # - Multiple colors but not too many
            # - Some black (transparency) but not all
            # - Reasonable variance
            
            score = 0
            
            # Good number of colors (3-16 for game sprites)
            if 3 <= unique_colors <= 16:
                score += 3
            elif 2 <= unique_colors <= 20:
                score += 2
            elif unique_colors > 1:
                score += 1
            
            # Has some empty space (black) but not all
            if 0.1 < black_ratio < 0.9:
                score += 2
            elif 0.05 < black_ratio < 0.95:
                score += 1
            
            # Not too sparse, not too dense
            if 0.05 < color_variance < 0.3:
                score += 2
            
            # Check for recognizable patterns (edges, shapes)
            has_structure = check_structure(img)
            if has_structure:
                score += 3
            
            return score >= 4, score
        
        return False, 0
        
    except Exception as e:
        return False, 0

def check_structure(img):
    """Check if image has recognizable structure (not just noise)"""
    # Convert to grayscale for edge detection
    if img.mode == 'RGB':
        gray = img.convert('L')
        pixels = list(gray.getdata())
        width, height = img.size
        
        # Look for horizontal and vertical edges
        edge_count = 0
        
        for y in range(height - 1):
            for x in range(width - 1):
                idx = y * width + x
                current = pixels[idx]
                right = pixels[idx + 1]
                down = pixels[idx + width]
                
                # Check for edges (significant brightness changes)
                if abs(current - right) > 50 or abs(current - down) > 50:
                    edge_count += 1
        
        # Real sprites have a reasonable number of edges
        total_pixels = width * height
        edge_ratio = edge_count / total_pixels
        
        # Good sprites have 10-50% edge pixels
        return 0.1 < edge_ratio < 0.5
    
    return False

def filter_sprites(input_dir, output_dir, min_score=4):
    """Filter sprites and copy good ones to output directory"""
    input_dir = Path(input_dir)
    output_dir = Path(output_dir)
    output_dir.mkdir(exist_ok=True)
    
    print(f"Filtering sprites from {input_dir}/")
    print(f"Minimum score: {min_score}")
    print("=" * 60)
    
    all_files = list(input_dir.glob("sprite_*.png"))
    print(f"Total sprites to analyze: {len(all_files)}\n")
    
    # Group by size for organized output
    by_size = {}
    
    good_count = 0
    for i, file in enumerate(all_files):
        if (i + 1) % 1000 == 0:
            print(f"Analyzed {i + 1}/{len(all_files)}... ({good_count} good so far)")
        
        is_good, score = analyze_sprite(file)
        
        if is_good and score >= min_score:
            # Extract size from filename
            parts = file.stem.split('_')
            if len(parts) >= 2:
                size = parts[1]  # e.g., "32x32x4"
                
                if size not in by_size:
                    by_size[size] = []
                by_size[size].append((file, score))
                
                good_count += 1
    
    print(f"\n{good_count} good sprites found!")
    print("=" * 60)
    
    # Copy filtered sprites organized by size
    for size, files in sorted(by_size.items()):
        size_dir = output_dir / size
        size_dir.mkdir(exist_ok=True)
        
        # Sort by score (best first)
        files.sort(key=lambda x: x[1], reverse=True)
        
        print(f"\n{size}: {len(files)} sprites")
        for file, score in files[:3]:  # Show top 3
            print(f"  {file.name} (score: {score})")
        
        # Copy all
        for file, score in files:
            # Rename to include score
            new_name = f"score{score:02d}_{file.name}"
            shutil.copy2(file, size_dir / new_name)
        
        if len(files) > 3:
            print(f"  ... and {len(files) - 3} more")
    
    print("\n" + "=" * 60)
    print(f"Filtered sprites copied to: {output_dir}/")
    print("Organized by size in subdirectories")
    
    return good_count

def main():
    if len(sys.argv) < 2:
        print("Usage: filter_sprites.py <input_dir> [output_dir] [min_score]")
        print("\nExample:")
        print("  python3 tools/filter_sprites.py sprites/ filtered_sprites/ 4")
        sys.exit(1)
    
    input_dir = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else 'filtered_sprites'
    min_score = int(sys.argv[3]) if len(sys.argv) > 3 else 4
    
    count = filter_sprites(input_dir, output_dir, min_score)
    
    if count > 0:
        print("\nNext steps:")
        print(f"1. Browse filtered sprites: ls -R {output_dir}/")
        print(f"2. Create HTML viewer: python3 tools/sprite_viewer.py {output_dir}/ --html")
        print(f"3. Look in 32x32x4/ and 16x16x4/ for game sprites")

if __name__ == '__main__':
    main()

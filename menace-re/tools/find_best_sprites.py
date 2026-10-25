#!/usr/bin/env python3
"""
Ultra-strict sprite filter - finds only the BEST sprite candidates
Looks for classic game sprite patterns: clear shapes, good contrast, symmetry
"""

import sys
from pathlib import Path
from PIL import Image
import shutil

def calculate_symmetry(img):
    """Check if sprite is symmetric (common for player ships)"""
    pixels = list(img.getdata())
    width, height = img.size
    
    if img.mode != 'RGB':
        return 0
    
    # Check vertical symmetry
    symmetry_score = 0
    for y in range(height):
        for x in range(width // 2):
            left_idx = y * width + x
            right_idx = y * width + (width - 1 - x)
            
            if left_idx < len(pixels) and right_idx < len(pixels):
                left = pixels[left_idx]
                right = pixels[right_idx]
                
                # Colors should be similar
                diff = sum(abs(a - b) for a, b in zip(left, right))
                if diff < 30:  # Very similar
                    symmetry_score += 1
    
    total_checks = (width // 2) * height
    return symmetry_score / total_checks if total_checks > 0 else 0

def has_clear_shape(img):
    """Check if sprite has a clear, defined shape (not noise)"""
    if img.mode != 'RGB':
        return False
    
    pixels = list(img.getdata())
    width, height = img.size
    
    # Count black (transparent) vs non-black pixels
    black_count = 0
    colored_count = 0
    
    for r, g, b in pixels:
        if r < 10 and g < 10 and b < 10:
            black_count += 1
        else:
            colored_count += 1
    
    # Good sprites have a clear shape with empty space around it
    # Ratio should be reasonable (not all black, not all colored)
    if black_count == 0 or colored_count == 0:
        return False
    
    ratio = colored_count / (black_count + colored_count)
    
    # Sweet spot: 15-70% filled
    return 0.15 < ratio < 0.70

def check_color_quality(img):
    """Check if sprite uses game-appropriate colors"""
    if img.mode != 'RGB':
        return 0
    
    pixels = list(img.getdata())
    
    # Count unique non-black colors
    colors = set()
    for r, g, b in pixels:
        if r > 10 or g > 10 or b > 10:  # Not black
            colors.add((r, g, b))
    
    num_colors = len(colors)
    
    # Game sprites typically use 2-8 distinct colors
    if 2 <= num_colors <= 8:
        return 3
    elif 1 <= num_colors <= 12:
        return 2
    elif num_colors > 0:
        return 1
    
    return 0

def has_distinct_edges(img):
    """Check for clean, distinct edges (not gradients or noise)"""
    if img.mode != 'RGB':
        return False
    
    gray = img.convert('L')
    pixels = list(gray.getdata())
    width, height = img.size
    
    strong_edges = 0
    total_checks = 0
    
    for y in range(height - 1):
        for x in range(width - 1):
            idx = y * width + x
            current = pixels[idx]
            right = pixels[idx + 1]
            
            total_checks += 1
            
            # Strong edge = big brightness difference
            if abs(current - right) > 100:
                strong_edges += 1
    
    edge_ratio = strong_edges / total_checks if total_checks > 0 else 0
    
    # Good sprites have moderate strong edges (10-40%)
    return 0.10 < edge_ratio < 0.40

def analyze_sprite_advanced(image_path):
    """Advanced sprite analysis with strict criteria"""
    try:
        img = Image.open(image_path)
        
        # Must be valid size
        width, height = img.size
        if width < 8 or height < 8:
            return False, 0
        
        score = 0
        details = []
        
        # 1. Check for clear shape
        if has_clear_shape(img):
            score += 4
            details.append("clear_shape")
        else:
            return False, 0  # Reject if no clear shape
        
        # 2. Color quality
        color_score = check_color_quality(img)
        score += color_score
        if color_score >= 2:
            details.append(f"good_colors")
        
        # 3. Distinct edges
        if has_distinct_edges(img):
            score += 3
            details.append("clean_edges")
        
        # 4. Symmetry (bonus for symmetric sprites - ships)
        symmetry = calculate_symmetry(img)
        if symmetry > 0.6:
            score += 3
            details.append(f"symmetric_{int(symmetry*100)}")
        elif symmetry > 0.4:
            score += 1
        
        # 5. Check if mostly one connected shape
        # (not scattered dots)
        
        return score >= 7, score
        
    except Exception as e:
        return False, 0

def find_best_sprites(input_dir, output_dir, max_sprites=100):
    """Find only the absolute best sprite candidates"""
    input_dir = Path(input_dir)
    output_dir = Path(output_dir)
    output_dir.mkdir(exist_ok=True)
    
    print("🔍 ULTRA-STRICT SPRITE FILTER")
    print("Looking for only the BEST sprite candidates...")
    print("=" * 60)
    
    all_files = list(input_dir.glob("**/*.png"))
    print(f"Analyzing {len(all_files)} sprites...\n")
    
    # Collect all good sprites with scores
    candidates = []
    
    for i, file in enumerate(all_files):
        if (i + 1) % 1000 == 0:
            print(f"Progress: {i + 1}/{len(all_files)}... ({len(candidates)} excellent found)")
        
        is_excellent, score = analyze_sprite_advanced(file)
        
        if is_excellent:
            candidates.append((file, score))
    
    print(f"\n✓ Found {len(candidates)} excellent sprites!")
    
    # Sort by score (best first)
    candidates.sort(key=lambda x: x[1], reverse=True)
    
    # Take only the best
    best_candidates = candidates[:max_sprites]
    
    print(f"Keeping top {len(best_candidates)} sprites")
    print("=" * 60)
    
    # Group by size
    by_size = {}
    for file, score in best_candidates:
        # Extract size from parent directory or filename
        if 'x' in file.parent.name and file.parent.name[0].isdigit():
            size = file.parent.name
        else:
            parts = file.stem.split('_')
            size = next((p for p in parts if 'x' in p and p[0].isdigit()), 'unknown')
        
        if size not in by_size:
            by_size[size] = []
        by_size[size].append((file, score))
    
    # Copy organized by size
    for size, files in sorted(by_size.items()):
        size_dir = output_dir / size
        size_dir.mkdir(exist_ok=True)
        
        print(f"\n{size}: {len(files)} sprites")
        
        for file, score in files[:5]:  # Show top 5
            print(f"  ⭐ score {score}: {file.name}")
        
        # Copy all
        for file, score in files:
            new_name = f"BEST{score:02d}_{file.name.replace('score', 's')}"
            shutil.copy2(file, size_dir / new_name)
        
        if len(files) > 5:
            print(f"  ... and {len(files) - 5} more")
    
    print("\n" + "=" * 60)
    print(f"✓ Top {len(best_candidates)} sprites saved to: {output_dir}/")
    print("\n🎯 RECOMMENDED: Start with 32x32x4/ - player ship likely there!")
    
    return len(best_candidates)

def main():
    if len(sys.argv) < 2:
        print("Usage: find_best_sprites.py <input_dir> [output_dir] [max_count]")
        print("\nExample:")
        print("  python3 tools/find_best_sprites.py filtered_sprites/ best_sprites/ 100")
        print("\nThis finds only the TOP quality sprites (default: 100)")
        sys.exit(1)
    
    input_dir = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else 'best_sprites'
    max_count = int(sys.argv[3]) if len(sys.argv) > 3 else 100
    
    count = find_best_sprites(input_dir, output_dir, max_count)
    
    if count > 0:
        print("\nQuick browse:")
        print(f"  explorer.exe {output_dir}/32x32x4/  # Windows")
        print(f"  open {output_dir}/32x32x4/          # macOS")
        print(f"  xdg-open {output_dir}/32x32x4/      # Linux")

if __name__ == '__main__':
    main()

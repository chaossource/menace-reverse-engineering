#!/usr/bin/env python3
"""
Visual template matching of extracted sprites against real gameplay screenshots.
Uses actual image comparison (normalized cross-correlation) to find sprites in screenshots.
"""

import sys
from pathlib import Path
from PIL import Image
import numpy as np
from typing import List, Tuple, Dict
import json

def normalize_image(img_array):
    """Normalize image array to 0-1 range for matching."""
    img_float = img_array.astype(float)
    if img_float.max() > 0:
        return img_float / img_float.max()
    return img_float

def calculate_ncc(template, image_region):
    """
    Calculate Normalized Cross-Correlation between template and image region.
    Returns value between -1 and 1, where 1 is perfect match.
    """
    # Normalize both to same range
    template_norm = normalize_image(template)
    region_norm = normalize_image(image_region)
    
    # Calculate NCC
    template_mean = np.mean(template_norm)
    region_mean = np.mean(region_norm)
    
    numerator = np.sum((template_norm - template_mean) * (region_norm - region_mean))
    denominator = np.sqrt(
        np.sum((template_norm - template_mean)**2) * 
        np.sum((region_norm - region_mean)**2)
    )
    
    if denominator == 0:
        return 0.0
    
    return numerator / denominator

def rgb_distance(color1, color2):
    """Calculate Euclidean distance between two RGB colors."""
    return np.sqrt(sum((a - b)**2 for a, b in zip(color1, color2)))

def palette_shift_match(template, image_region, tolerance=40):
    """
    Match allowing palette differences.
    For each unique color in template, find best matching color in region.
    """
    if template.shape != image_region.shape:
        return 0.0
    
    h, w = template.shape[:2]
    if h * w == 0:
        return 0.0
    
    # Get RGB arrays
    template_rgb = template.reshape(-1, 3) if len(template.shape) == 3 else np.stack([template]*3, axis=-1).reshape(-1, 3)
    region_rgb = image_region.reshape(-1, 3) if len(image_region.shape) == 3 else np.stack([image_region]*3, axis=-1).reshape(-1, 3)
    
    # Calculate per-pixel color distance
    distances = np.sqrt(np.sum((template_rgb - region_rgb)**2, axis=1))
    
    # Score based on how many pixels are within tolerance
    matches = np.sum(distances <= tolerance)
    score = matches / len(distances)
    
    return score

def match_template_in_image(template_path: Path, screenshot_path: Path, 
                           threshold=0.7, palette_tolerance=40) -> List[Tuple[int, int, float, str]]:
    """
    Find template sprite in screenshot using multiple matching methods.
    Returns list of (x, y, score, method) for matches above threshold.
    """
    template_img = Image.open(template_path).convert('RGB')
    screenshot_img = Image.open(screenshot_path).convert('RGB')
    
    template = np.array(template_img)
    screenshot = np.array(screenshot_img)
    
    th, tw = template.shape[:2]
    sh, sw = screenshot.shape[:2]
    
    if th > sh or tw > sw:
        return []
    
    matches = []
    
    # Slide template across screenshot
    for y in range(sh - th + 1):
        for x in range(sw - tw + 1):
            region = screenshot[y:y+th, x:x+tw]
            
            # Try NCC matching
            ncc_score = calculate_ncc(template, region)
            if ncc_score >= threshold:
                matches.append((x, y, ncc_score, 'ncc'))
            
            # Try palette-shifted matching (more lenient)
            palette_score = palette_shift_match(template, region, palette_tolerance)
            if palette_score >= threshold:
                matches.append((x, y, palette_score, 'palette'))
    
    return matches

def find_best_match(template_path: Path, screenshot_paths: List[Path], 
                   threshold=0.65) -> Dict:
    """
    Find best match for template across all screenshots.
    Returns dict with match info or None if no match.
    """
    best_match = None
    best_score = 0.0
    
    for screenshot_path in screenshot_paths:
        matches = match_template_in_image(template_path, screenshot_path, threshold)
        
        for x, y, score, method in matches:
            if score > best_score:
                best_score = score
                best_match = {
                    'sprite': str(template_path),
                    'screenshot': str(screenshot_path.name),
                    'position': (x, y),
                    'score': float(score),
                    'method': method
                }
    
    return best_match if best_score > threshold else None

def main():
    if len(sys.argv) < 3:
        print("Usage: visual_match_sprites.py <sprites_dir> <screenshots_dir> [threshold]")
        print("  sprites_dir: Directory containing candidate sprite PNGs")
        print("  screenshots_dir: Directory containing reference gameplay screenshots")
        print("  threshold: Matching threshold 0.0-1.0 (default 0.65)")
        sys.exit(1)
    
    sprites_dir = Path(sys.argv[1])
    screenshots_dir = Path(sys.argv[2])
    threshold = float(sys.argv[3]) if len(sys.argv) > 3 else 0.65
    
    if not sprites_dir.exists():
        print(f"Error: Sprites directory not found: {sprites_dir}")
        sys.exit(1)
    
    if not screenshots_dir.exists():
        print(f"Error: Screenshots directory not found: {screenshots_dir}")
        sys.exit(1)
    
    # Get all screenshot files
    screenshot_files = sorted(screenshots_dir.glob('*.png')) + sorted(screenshots_dir.glob('*.jpg'))
    if not screenshot_files:
        print(f"Error: No PNG/JPG files found in {screenshots_dir}")
        sys.exit(1)
    
    print(f"Found {len(screenshot_files)} reference screenshots")
    for ss in screenshot_files:
        print(f"  - {ss.name}")
    
    # Get all sprite candidates (recursively)
    sprite_files = sorted(sprites_dir.rglob('*.png'))
    print(f"\nScanning {len(sprite_files)} sprite candidates...")
    
    matches = []
    no_match_count = 0
    
    for i, sprite_path in enumerate(sprite_files):
        if i % 10 == 0:
            print(f"Progress: {i}/{len(sprite_files)} sprites checked, {len(matches)} matches found...")
        
        match = find_best_match(sprite_path, screenshot_files, threshold)
        if match:
            matches.append(match)
            print(f"  ✓ MATCH: {sprite_path.name} → {match['screenshot']} (score: {match['score']:.3f})")
        else:
            no_match_count += 1
    
    print(f"\n{'='*70}")
    print(f"RESULTS:")
    print(f"  Total candidates: {len(sprite_files)}")
    print(f"  Matches found: {len(matches)}")
    print(f"  No matches: {no_match_count}")
    print(f"{'='*70}\n")
    
    # Save results to JSON
    output_file = sprites_dir.parent / 'visual_matching_results.json'
    with open(output_file, 'w') as f:
        json.dump({
            'threshold': threshold,
            'total_candidates': len(sprite_files),
            'matches_found': len(matches),
            'matches': matches,
            'screenshots': [str(s.name) for s in screenshot_files]
        }, f, indent=2)
    
    print(f"Detailed results saved to: {output_file}")
    
    return len(matches)

if __name__ == '__main__':
    matches_found = main()
    sys.exit(0 if matches_found > 0 else 1)

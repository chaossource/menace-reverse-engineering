#!/usr/bin/env python3
"""
Fast visual template matching using OpenCV's optimized matchTemplate.
Finds extracted sprites in real gameplay screenshots.
"""

import sys
from pathlib import Path
import cv2
import numpy as np
import json

def match_sprite_in_screenshot(sprite_path, screenshot_path, threshold=0.7):
    """
    Use OpenCV's optimized template matching.
    Returns list of matches with (x, y, score).
    """
    # Load images
    sprite = cv2.imread(str(sprite_path))
    screenshot = cv2.imread(str(screenshot_path))
    
    if sprite is None or screenshot is None:
        return []
    
    # Check size constraints
    if sprite.shape[0] > screenshot.shape[0] or sprite.shape[1] > screenshot.shape[1]:
        return []
    
    # Try multiple methods for robustness
    methods = [
        cv2.TM_CCOEFF_NORMED,  # Normalized cross-correlation
        cv2.TM_CCORR_NORMED,   # Normalized correlation
    ]
    
    best_matches = []
    
    for method in methods:
        result = cv2.matchTemplate(screenshot, sprite, method)
        
        # Find locations above threshold
        locations = np.where(result >= threshold)
        
        for pt in zip(*locations[::-1]):  # (x, y) format
            score = result[pt[1], pt[0]]
            best_matches.append({
                'position': (int(pt[0]), int(pt[1])),
                'score': float(score),
                'method': method
            })
    
    # Deduplicate nearby matches (within 5 pixels)
    if not best_matches:
        return []
    
    # Sort by score, keep best
    best_matches.sort(key=lambda x: x['score'], reverse=True)
    
    unique_matches = []
    for match in best_matches:
        # Check if this is far enough from existing matches
        is_unique = True
        for existing in unique_matches:
            dx = abs(match['position'][0] - existing['position'][0])
            dy = abs(match['position'][1] - existing['position'][1])
            if dx < 5 and dy < 5:
                is_unique = False
                break
        
        if is_unique:
            unique_matches.append(match)
    
    return unique_matches

def main():
    if len(sys.argv) < 3:
        print("Usage: fast_visual_match.py <sprites_dir> <screenshots_dir> [threshold]")
        sys.exit(1)
    
    sprites_dir = Path(sys.argv[1])
    screenshots_dir = Path(sys.argv[2])
    threshold = float(sys.argv[3]) if len(sys.argv) > 3 else 0.70
    
    print(f"Fast Visual Sprite Matching")
    print(f"Threshold: {threshold}")
    print(f"=" * 70)
    
    # Get screenshots
    screenshot_files = list(screenshots_dir.glob('*.png')) + list(screenshots_dir.glob('*.jpg'))
    screenshot_files = sorted(screenshot_files)
    
    print(f"\nReference screenshots ({len(screenshot_files)}):")
    for ss in screenshot_files:
        img = cv2.imread(str(ss))
        if img is not None:
            h, w = img.shape[:2]
            print(f"  - {ss.name} ({w}x{h})")
    
    # Get sprite candidates
    sprite_files = sorted(sprites_dir.rglob('*.png'))
    print(f"\nScanning {len(sprite_files)} sprite candidates...\n")
    
    all_matches = []
    sprites_with_matches = set()
    
    for i, sprite_path in enumerate(sprite_files):
        if (i + 1) % 10 == 0:
            print(f"Progress: {i+1}/{len(sprite_files)} sprites checked, "
                  f"{len(sprites_with_matches)} unique sprites matched...")
        
        found_match = False
        
        for screenshot_path in screenshot_files:
            matches = match_sprite_in_screenshot(sprite_path, screenshot_path, threshold)
            
            if matches:
                best_match = matches[0]  # Highest score
                match_info = {
                    'sprite': str(sprite_path.relative_to(sprites_dir.parent)),
                    'sprite_name': sprite_path.name,
                    'screenshot': screenshot_path.name,
                    'position': best_match['position'],
                    'score': best_match['score'],
                    'num_locations': len(matches)
                }
                all_matches.append(match_info)
                sprites_with_matches.add(sprite_path.name)
                
                if not found_match:
                    print(f"  ✓ {sprite_path.name} → {screenshot_path.name} "
                          f"@ ({best_match['position'][0]}, {best_match['position'][1]}) "
                          f"score={best_match['score']:.3f}")
                    found_match = True
    
    print(f"\n{'='*70}")
    print(f"FINAL RESULTS:")
    print(f"  Total candidates checked: {len(sprite_files)}")
    print(f"  Sprites with matches: {len(sprites_with_matches)}")
    print(f"  Total match instances: {len(all_matches)}")
    print(f"{'='*70}\n")
    
    # Group by screenshot
    by_screenshot = {}
    for match in all_matches:
        ss = match['screenshot']
        if ss not in by_screenshot:
            by_screenshot[ss] = []
        by_screenshot[ss].append(match)
    
    print("Matches by screenshot:")
    for ss in sorted(by_screenshot.keys()):
        print(f"  {ss}: {len(by_screenshot[ss])} sprites matched")
    print()
    
    # Save results
    output_file = sprites_dir.parent / 'visual_matching_results.json'
    with open(output_file, 'w') as f:
        json.dump({
            'threshold': threshold,
            'total_candidates': len(sprite_files),
            'unique_sprites_matched': len(sprites_with_matches),
            'total_match_instances': len(all_matches),
            'matches': all_matches,
            'screenshots': [s.name for s in screenshot_files],
            'by_screenshot': {k: len(v) for k, v in by_screenshot.items()}
        }, f, indent=2)
    
    print(f"Results saved to: {output_file}\n")
    
    return len(sprites_with_matches)

if __name__ == '__main__':
    num_matches = main()
    sys.exit(0 if num_matches > 0 else 1)

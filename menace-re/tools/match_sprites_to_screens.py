#!/usr/bin/env python3
"""
Match extracted sprite candidates against actual game screens from ROM
This does REAL visual comparison, not heuristic scoring
"""

import sys
from pathlib import Path
from PIL import Image
import numpy as np

def load_image_as_array(path):
    """Load image as numpy array"""
    img = Image.open(path)
    if img.mode != 'RGB':
        img = img.convert('RGB')
    return np.array(img)

def find_sprite_in_screen(sprite_arr, screen_arr, threshold=0.95):
    """
    Search for sprite within screen using template matching
    Returns (found, x, y, match_score) where found=True if match found
    """
    sprite_h, sprite_w = sprite_arr.shape[:2]
    screen_h, screen_w = screen_arr.shape[:2]
    
    if sprite_h > screen_h or sprite_w > screen_w:
        return False, 0, 0, 0.0
    
    best_match = 0.0
    best_x, best_y = 0, 0
    
    # Slide sprite over screen
    for y in range(screen_h - sprite_h + 1):
        for x in range(screen_w - sprite_w + 1):
            screen_region = screen_arr[y:y+sprite_h, x:x+sprite_w]
            
            # Calculate match score (percentage of matching pixels)
            # Consider black (0,0,0) in sprite as transparent/don't-care
            sprite_pixels = sprite_arr.reshape(-1, 3)
            screen_pixels = screen_region.reshape(-1, 3)
            
            # Only compare non-black pixels in sprite
            non_black_mask = np.any(sprite_pixels > 10, axis=1)
            
            if np.sum(non_black_mask) == 0:
                continue  # All black sprite
            
            sprite_colored = sprite_pixels[non_black_mask]
            screen_colored = screen_pixels[non_black_mask]
            
            # Calculate similarity
            diff = np.abs(sprite_colored.astype(int) - screen_colored.astype(int))
            similarity = 1.0 - (np.mean(diff) / 255.0)
            
            if similarity > best_match:
                best_match = similarity
                best_x, best_y = x, y
    
    found = best_match >= threshold
    return found, best_x, best_y, best_match

def match_sprites(sprite_dir, screen_dir, output_file='sprite_matches.txt'):
    """Match all sprite candidates against all game screens"""
    sprite_dir = Path(sprite_dir)
    screen_dir = Path(screen_dir)
    
    print("🔍 REAL SPRITE MATCHING")
    print("Comparing extracted sprites against actual game screens")
    print("=" * 60)
    
    # Get all sprites and screens
    sprite_files = list(sprite_dir.glob("**/*.png"))
    screen_files = list(screen_dir.glob("*.png"))
    
    print(f"Sprites to test: {len(sprite_files)}")
    print(f"Screens to search: {len(screen_files)}")
    print()
    
    matches = []
    tested = 0
    
    for sprite_path in sprite_files:
        tested += 1
        if tested % 10 == 0:
            print(f"Progress: {tested}/{len(sprite_files)} tested, {len(matches)} matches found", end='\r')
        
        try:
            sprite_arr = load_image_as_array(sprite_path)
            sprite_name = str(sprite_path.relative_to(sprite_dir))
            
            # Try against all screens
            for screen_path in screen_files:
                try:
                    screen_arr = load_image_as_array(screen_path)
                    screen_name = screen_path.name
                    
                    found, x, y, score = find_sprite_in_screen(sprite_arr, screen_arr, threshold=0.90)
                    
                    if found:
                        matches.append({
                            'sprite': sprite_name,
                            'sprite_full_path': str(sprite_path),
                            'screen': screen_name,
                            'position': (x, y),
                            'match_score': score,
                            'sprite_size': sprite_arr.shape[:2]
                        })
                        print(f"\n✓ MATCH: {sprite_name}")
                        print(f"  Found in: {screen_name} at ({x}, {y})")
                        print(f"  Match score: {score:.2%}")
                        break  # Found in one screen is enough
                        
                except Exception as e:
                    continue
                    
        except Exception as e:
            continue
    
    print(f"\n\n{'='*60}")
    print(f"MATCHING COMPLETE")
    print(f"{'='*60}")
    print(f"Tested {len(sprite_files)} sprites against {len(screen_files)} screens")
    print(f"Found {len(matches)} REAL matches\n")
    
    if len(matches) == 0:
        print("❌ NO MATCHES FOUND")
        print("\nThis means:")
        print("- The sprite extractor missed the real sprites")
        print("- Sprites are stored differently (BOBs, different interleave)")
        print("- Need to try different extraction method")
        return []
    
    # Sort by match score
    matches.sort(key=lambda x: x['match_score'], reverse=True)
    
    # Classify matches
    classified = {
        'player_ships': [],
        'enemies': [],
        'bullets': [],
        'bosses': [],
        'ui_elements': [],
        'unknown': []
    }
    
    print("MATCHED SPRITES:")
    print("-" * 60)
    
    for match in matches:
        print(f"\n{match['sprite']}")
        print(f"  Screen: {match['screen']}")
        print(f"  Position: {match['position']}")
        print(f"  Score: {match['match_score']:.2%}")
        print(f"  Size: {match['sprite_size'][1]}x{match['sprite_size'][0]}")
        
        # Try to classify (simple heuristics based on where found)
        sprite_name = match['sprite'].lower()
        size = match['sprite_size']
        
        # You'd need to manually review these or add smarter classification
        classified['unknown'].append(match)
    
    # Save results
    with open(output_file, 'w') as f:
        f.write("SPRITE MATCHING RESULTS\n")
        f.write("="*60 + "\n\n")
        f.write(f"Found {len(matches)} sprites that appear in actual game screens\n\n")
        
        for match in matches:
            f.write(f"Sprite: {match['sprite']}\n")
            f.write(f"Full path: {match['sprite_full_path']}\n")
            f.write(f"Found in screen: {match['screen']}\n")
            f.write(f"Position: {match['position']}\n")
            f.write(f"Match score: {match['match_score']:.2%}\n")
            f.write(f"Size: {match['sprite_size'][1]}x{match['sprite_size'][0]}\n")
            f.write("-" * 40 + "\n")
    
    print(f"\n✓ Results saved to: {output_file}")
    return matches

def main():
    if len(sys.argv) < 3:
        print("Usage: match_sprites_to_screens.py <sprite_dir> <screen_dir> [output_file]")
        print("\nExample:")
        print("  python3 tools/match_sprites_to_screens.py best_sprites/ extracted_gfx/")
        print("\nThis does REAL visual comparison against actual game screens")
        sys.exit(1)
    
    sprite_dir = sys.argv[1]
    screen_dir = sys.argv[2]
    output_file = sys.argv[3] if len(sys.argv) > 3 else 'sprite_matches.txt'
    
    matches = match_sprites(sprite_dir, screen_dir, output_file)
    
    if len(matches) == 0:
        print("\n⚠️  NO SPRITES MATCHED")
        print("\nThe extraction method likely missed the real sprites.")
        print("Amiga sprites might be stored as:")
        print("- Hardware sprites (BOBs)")
        print("- Different memory layout")
        print("- Compressed or packed format")
        print("\nNeed a different extraction approach.")
    else:
        print(f"\n✓ Found {len(matches)} real sprites!")
        print(f"See {output_file} for full list")

if __name__ == '__main__':
    main()

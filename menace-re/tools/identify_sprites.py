#!/usr/bin/env python3
"""
Identify specific Menace game sprites from extracted candidates
Uses visual analysis to classify sprites as player, enemies, bullets, etc.
"""

import sys
from pathlib import Path
from PIL import Image
import json

def get_dominant_colors(img, max_colors=5):
    """Get the most common colors in the sprite"""
    if img.mode != 'RGB':
        return []
    
    pixels = list(img.getdata())
    
    # Filter out black (transparent)
    colored = [p for p in pixels if sum(p) > 30]
    
    if not colored:
        return []
    
    # Count colors
    color_counts = {}
    for color in colored:
        color_counts[color] = color_counts.get(color, 0) + 1
    
    # Sort by frequency
    sorted_colors = sorted(color_counts.items(), key=lambda x: x[1], reverse=True)
    
    return [c[0] for c in sorted_colors[:max_colors]]

def analyze_shape_type(img):
    """Determine what type of sprite this might be based on shape"""
    width, height = img.size
    pixels = list(img.getdata())
    
    # Count filled pixels
    filled = sum(1 for p in pixels if sum(p) > 30)
    total = len(pixels)
    fill_ratio = filled / total if total > 0 else 0
    
    # Check symmetry (vertical)
    is_symmetric = check_vertical_symmetry(img) > 0.7
    
    # Check if elongated vertically or horizontally
    aspect_ratio = height / width if width > 0 else 1
    
    features = {
        'fill_ratio': fill_ratio,
        'is_symmetric': is_symmetric,
        'aspect_ratio': aspect_ratio,
        'size': f'{width}x{height}'
    }
    
    # Classify based on features
    classification = []
    confidence = 0
    
    # Player ship: symmetric, medium fill, square-ish
    if is_symmetric and 0.2 < fill_ratio < 0.5 and 0.8 < aspect_ratio < 1.2:
        if width >= 24:
            classification.append('PLAYER_SHIP')
            confidence = 85
    
    # Bullet: small, compact, high fill
    if width <= 16 and height <= 16 and fill_ratio > 0.3:
        classification.append('BULLET')
        confidence = 70
    
    # Enemy: asymmetric or weird shape
    if not is_symmetric and 0.15 < fill_ratio < 0.6:
        classification.append('ENEMY')
        confidence = 60
    
    # Boss/large enemy: large size
    if width >= 48 or height >= 48:
        classification.append('BOSS_ENEMY')
        confidence = 55
    
    return classification, confidence, features

def check_vertical_symmetry(img):
    """Check vertical axis symmetry"""
    if img.mode != 'RGB':
        return 0
    
    pixels = list(img.getdata())
    width, height = img.size
    
    matches = 0
    total = 0
    
    for y in range(height):
        for x in range(width // 2):
            left_idx = y * width + x
            right_idx = y * width + (width - 1 - x)
            
            if left_idx < len(pixels) and right_idx < len(pixels):
                left = pixels[left_idx]
                right = pixels[right_idx]
                
                diff = sum(abs(a - b) for a, b in zip(left, right))
                if diff < 30:
                    matches += 1
                total += 1
    
    return matches / total if total > 0 else 0

def has_ship_characteristics(img):
    """Specific checks for player ship"""
    width, height = img.size
    
    # Menace player ship is typically:
    # - 24x24 or 32x32
    # - Symmetric
    # - Uses blue/silver/white colors typically
    # - Has a clear forward-facing design
    
    if not (20 <= width <= 40 and 20 <= height <= 40):
        return False, 0
    
    symmetry = check_vertical_symmetry(img)
    if symmetry < 0.6:
        return False, 0
    
    colors = get_dominant_colors(img, 3)
    
    # Check for typical ship colors (blues, grays, whites)
    has_ship_colors = False
    for r, g, b in colors:
        # Blue-ish or gray-ish
        if (b > r and b > g) or (abs(r - g) < 30 and abs(g - b) < 30):
            has_ship_colors = True
            break
    
    score = 50
    if symmetry > 0.8:
        score += 30
    if has_ship_colors:
        score += 20
    
    return score > 70, score

def identify_all_sprites(sprites_dir, output_file='identified_sprites.json'):
    """Analyze all sprites and identify them"""
    sprites_dir = Path(sprites_dir)
    
    results = {
        'player_candidates': [],
        'enemy_candidates': [],
        'bullet_candidates': [],
        'boss_candidates': [],
        'unknown': []
    }
    
    print("🔍 Analyzing sprites for identification...")
    print("=" * 60)
    
    all_sprites = list(sprites_dir.glob("**/*.png"))
    print(f"Total sprites to analyze: {len(all_sprites)}\n")
    
    for sprite_path in all_sprites:
        try:
            img = Image.open(sprite_path)
            
            # Get classifications
            classifications, conf, features = analyze_shape_type(img)
            is_ship, ship_score = has_ship_characteristics(img)
            
            sprite_info = {
                'path': str(sprite_path.relative_to(sprites_dir)),
                'full_path': str(sprite_path),
                'size': f"{img.width}x{img.height}",
                'classifications': classifications,
                'confidence': conf,
                'features': features
            }
            
            # Prioritize ship detection
            if is_ship and ship_score >= 70:
                sprite_info['ship_score'] = ship_score
                sprite_info['confidence'] = ship_score
                results['player_candidates'].append(sprite_info)
            elif 'PLAYER_SHIP' in classifications:
                results['player_candidates'].append(sprite_info)
            elif 'BULLET' in classifications:
                results['bullet_candidates'].append(sprite_info)
            elif 'BOSS_ENEMY' in classifications:
                results['boss_candidates'].append(sprite_info)
            elif 'ENEMY' in classifications:
                results['enemy_candidates'].append(sprite_info)
            else:
                results['unknown'].append(sprite_info)
                
        except Exception as e:
            print(f"Error processing {sprite_path}: {e}")
    
    # Sort by confidence
    for category in results:
        results[category].sort(key=lambda x: x.get('confidence', 0), reverse=True)
    
    # Print results
    print("\n" + "=" * 60)
    print("IDENTIFICATION RESULTS")
    print("=" * 60)
    
    print(f"\n🚀 PLAYER SHIP CANDIDATES: {len(results['player_candidates'])}")
    for item in results['player_candidates'][:5]:
        print(f"  ⭐ {item['path']}")
        print(f"     Confidence: {item['confidence']}%, Size: {item['size']}")
    
    print(f"\n👾 ENEMY CANDIDATES: {len(results['enemy_candidates'])}")
    for item in results['enemy_candidates'][:5]:
        print(f"  • {item['path']}")
        print(f"     Confidence: {item['confidence']}%, Size: {item['size']}")
    
    print(f"\n💥 BULLET CANDIDATES: {len(results['bullet_candidates'])}")
    for item in results['bullet_candidates'][:5]:
        print(f"  • {item['path']}")
        print(f"     Confidence: {item['confidence']}%, Size: {item['size']}")
    
    print(f"\n🐲 BOSS/LARGE ENEMY CANDIDATES: {len(results['boss_candidates'])}")
    for item in results['boss_candidates'][:3]:
        print(f"  • {item['path']}")
        print(f"     Confidence: {item['confidence']}%, Size: {item['size']}")
    
    # Save to JSON
    with open(output_file, 'w') as f:
        json.dump(results, f, indent=2)
    
    print(f"\n✓ Full results saved to: {output_file}")
    
    return results

def main():
    if len(sys.argv) < 2:
        print("Usage: identify_sprites.py <sprites_dir> [output_json]")
        print("\nExample:")
        print("  python3 tools/identify_sprites.py best_sprites/")
        sys.exit(1)
    
    sprites_dir = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else 'identified_sprites.json'
    
    results = identify_all_sprites(sprites_dir, output_file)
    
    print("\n" + "=" * 60)
    print("NEXT STEPS:")
    print("=" * 60)
    print("\n1. Review identified_sprites.json for full list")
    print("2. Check player_candidates - pick the best ship")
    print("3. Copy identified sprites to assets/sprites/:")
    print("   mkdir -p assets/sprites")
    print("   cp best_sprites/PATH/TO/SHIP.png assets/sprites/player_ship.png")

if __name__ == '__main__':
    main()

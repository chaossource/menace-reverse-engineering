#!/usr/bin/env python3
"""
Create simple bullet/projectile sprites for Menace.
Bullets are typically very simple in shoot'em ups - small colored shapes.
"""

from PIL import Image, ImageDraw
from pathlib import Path

def create_bullet(width, height, color, shape='circle', output_path='bullet.png'):
    """Create a simple bullet sprite."""
    img = Image.new('RGBA', (width, height), (0, 0, 0, 0))
    draw = ImageDraw.Draw(img)
    
    if shape == 'circle':
        # Draw a circle
        draw.ellipse([0, 0, width-1, height-1], fill=color)
    elif shape == 'diamond':
        # Draw a diamond
        mid_x, mid_y = width // 2, height // 2
        points = [(mid_x, 0), (width-1, mid_y), (mid_x, height-1), (0, mid_y)]
        draw.polygon(points, fill=color)
    elif shape == 'rectangle':
        # Draw a rectangle
        draw.rectangle([0, 0, width-1, height-1], fill=color)
    elif shape == 'laser':
        # Draw a horizontal laser beam
        h = height // 3
        y = (height - h) // 2
        draw.rectangle([0, y, width-1, y+h-1], fill=color)
        # Add bright center
        bright = tuple(min(255, c + 100) for c in color[:3]) + (255,)
        h2 = max(1, h // 3)
        y2 = (height - h2) // 2
        draw.rectangle([0, y2, width-1, y2+h2-1], fill=bright)
    
    img.save(output_path)
    print(f"Created: {output_path} ({width}x{height}, {shape}, {color})")

def main():
    output_dir = Path('community_sprites/bullets')
    output_dir.mkdir(parents=True, exist_ok=True)
    
    print("Creating bullet sprites...")
    
    # Player bullets (small, yellow/white)
    create_bullet(4, 4, (255, 255, 0, 255), 'circle', output_dir / 'player_bullet_small.png')
    create_bullet(6, 6, (255, 255, 255, 255), 'circle', output_dir / 'player_bullet_medium.png')
    create_bullet(8, 4, (255, 255, 128, 255), 'diamond', output_dir / 'player_bullet_diamond.png')
    
    # Player cannons (larger, orange/red)
    create_bullet(8, 8, (255, 128, 0, 255), 'circle', output_dir / 'player_cannon.png')
    create_bullet(10, 6, (255, 64, 0, 255), 'diamond', output_dir / 'player_cannon_large.png')
    
    # Player laser (horizontal beam, cyan/blue)
    create_bullet(32, 4, (0, 255, 255, 255), 'laser', output_dir / 'player_laser.png')
    create_bullet(48, 6, (64, 192, 255, 255), 'laser', output_dir / 'player_laser_large.png')
    
    # Enemy bullets (red/purple)
    create_bullet(4, 6, (255, 0, 0, 255), 'circle', output_dir / 'enemy_bullet_small.png')
    create_bullet(6, 8, (255, 0, 128, 255), 'circle', output_dir / 'enemy_bullet_medium.png')
    create_bullet(8, 8, (192, 0, 255, 255), 'diamond', output_dir / 'enemy_bullet_diamond.png')
    
    # Boss bullets (larger, purple/magenta)
    create_bullet(10, 10, (255, 0, 255, 255), 'circle', output_dir / 'boss_bullet.png')
    create_bullet(12, 12, (192, 0, 192, 255), 'diamond', output_dir / 'boss_bullet_large.png')
    
    print(f"\nCreated {len(list(output_dir.glob('*.png')))} bullet sprites in {output_dir}/")

if __name__ == '__main__':
    main()

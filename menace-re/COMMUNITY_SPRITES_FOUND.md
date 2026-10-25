# Community-Extracted Menace Sprites - SUCCESS!

**Date:** 2026-10-25  
**Status:** ✅ Found pre-extracted sprites from community sources

---

## Summary

Good news! The Menace sprite extraction has already been done by the community. We found authentic game sprites extracted and converted to PNG format.

---

## Source: GitHub - davepoo/Menace-Amiga-Format

**Repository:** https://github.com/davepoo/Menace-Amiga-Format

This repo contains the original Amiga Format magazine tutorial source code for Menace, including:
- Original 68000 assembly source code
- Sprite data files (ships.s)
- **Extracted PNG conversions of all sprites**
- Graphics converter tools

### Downloaded Assets (community_sprites/)

#### Player Ship Sprites (24 images)

The player ship uses **two 16-pixel-wide hardware sprites overlayed** to create 32-pixel wide ship with 16 colors.

**Structure:**
- **4 weapon configurations:**
  1. No weapons (basic ship)
  2. Cannons
  3. Lasers
  4. Cannons + Lasers

- **3 orientations per configuration:**
  1. Tilting up
  2. Side-on (level)
  3. Tilting down

- **2 parts per ship:**
  - Back (44 pixels high - includes outrider attachment points)
  - Front (22 pixels high - main cockpit)

**Total: 4 × 3 × 2 = 24 sprite images**

**Files:**
```
ship1.1_Back.png   ship1.1_Front.png   # Basic ship, tilting up
ship1.2_Back.png   ship1.2_Front.png   # Basic ship, level
ship1.3_Back.png   ship1.3_Front.png   # Basic ship, tilting down

ship2.1_Back.png   ship2.1_Front.png   # Cannons, tilting up
ship2.2_Back.png   ship2.2_Front.png   # Cannons, level
ship2.3_Back.png   ship2.3_Front.png   # Cannons, tilting down

ship3.1_Back.png   ship3.1_Front.png   # Lasers, tilting up
ship3.2_Back.png   ship3.2_Front.png   # Lasers, level
ship3.3_Back.png   ship3.3_Front.png   # Lasers, tilting down

ship4.1_Back.png   ship4.1_Front.png   # Both weapons, tilting up
ship4.2_Back.png   ship4.2_Front.png   # Both weapons, level
ship4.3_Back.png   ship4.3_Front.png   # Both weapons, tilting down
```

**Dimensions:**
- Back: 16×44 pixels (two 16-pixel sprites overlayed)
- Front: 16×22 pixels (two 16-pixel sprites overlayed)
- Combined: 32 pixels wide total

**Colors:** 16 colors (15 + transparent)

#### Background Tiles

**File:** `backgrounds.png`  
**Dimensions:** 16×192 pixels  
**Description:** Background tileset (parallax scrolling layers)

#### Foreground Tiles

**File:** `foregrounds.png`  
**Dimensions:** 256×256 pixels  
**Description:** Foreground/terrain tileset (obstacles, platforms)

---

## Technical Details from Source

### Hardware Sprite Format

From the GitHub repo documentation:

- Amiga has 8 hardware sprites available
- Each sprite is 16 pixels wide × any height
- Each sprite has 2 bitplanes (4 colors including transparent)
- Menace **overlays 2 sprites** to get 4 bitplanes = 16 colors
- This means the ship uses **4 of the 8 hardware sprites**
- The wider screen (320+ pixels) steals DMA cycles, limiting to 6 usable sprites total

### Sprite Data Structure

Each sprite in the assembly source (ships.s) contains:
```
1. 2 control words (sprite position + overlay info)
2. Sprite data (low bitplane word, high bitplane word alternating)
3. 2 control words (end marker)
```

### Memory Size Per Ship Animation

- Back sprite: 2 bytes wide × 44 high × 2 planes = 176 bytes + 8 bytes control = 184 bytes
- Front sprite: 2 bytes wide × 22 high × 2 planes = 88 bytes + 8 bytes control = 96 bytes
- Full ship: (184 + 96) × 2 (overlaying) = **560 bytes per ship animation**
- All 12 animations: 560 × 12 = **6,720 bytes total ship data**

### Color Palette

- The ship uses the **last 16 colors** of the 32-color palette
- Colors 16-31 are dedicated to sprites
- Colors 0-15 are for background/playfield

---

## Integration Guide

### Copy to Game Assets

```bash
cd menace-reverse-engineering

# Create assets directory structure
mkdir -p assets/sprites/ship

# Copy ship sprites
cp community_sprites/ship*.png assets/sprites/ship/

# Copy tilesets
cp community_sprites/backgrounds.png assets/sprites/
cp community_sprites/foregrounds.png assets/sprites/

# Verify
ls -lh assets/sprites/
```

### Usage in Game Code

The ship sprites need to be composited:

```cpp
// Load ship parts
SDL_Surface* shipBack = IMG_Load("assets/sprites/ship/ship1.2_Back.png");
SDL_Surface* shipFront = IMG_Load("assets/sprites/ship/ship1.2_Front.png");

// Composite: Back sprite at (x, y), Front sprite at (x+16, y+11)
// Creates full 32-pixel wide ship
```

Ship rendering order:
1. Draw back sprite (16×44) at player position
2. Draw front sprite (16×22) at player position + (16, 11)
3. Result: 32×44 pixel ship with proper overlap

### Animation States

Map game state to sprite files:

```cpp
// Weapon configuration (1-4)
int weaponLevel = 1; // 1=none, 2=cannons, 3=lasers, 4=both

// Orientation (1-3)
int tilt = 2; // 1=up, 2=level, 3=down

// File naming
char backFile[256];
char frontFile[256];
snprintf(backFile, sizeof(backFile), 
         "assets/sprites/ship/ship%d.%d_Back.png", weaponLevel, tilt);
snprintf(frontFile, sizeof(frontFile), 
         "assets/sprites/ship/ship%d.%d_Front.png", weaponLevel, tilt);
```

---

## What's Still Missing

The GitHub repo has **player ship only**. Still needed:

❌ **Enemy sprites** (various alien creatures)  
❌ **Boss sprites** (large enemies like the red eye)  
❌ **Projectile sprites** (player bullets, enemy bullets)  
❌ **Powerup sprites** (weapon upgrades, shields)  
❌ **Explosion sprites** (death animations)  
❌ **UI elements** (HUD, score, lives)  

### Options for Missing Sprites

1. **Manual extraction from reference screenshots**
   - We have authentic gameplay screenshots in `reference_screenshots/`
   - Manually crop enemies, bullets, explosions from screenshots
   - Trace/recreate if needed

2. **Continue disassembly approach**
   - Find enemy sprite data in game code (ALIENS, GUARDIAN, MINE files)
   - Extract from correct offsets
   - Convert to PNG

3. **Check The Spriters Resource**
   - Create account and download Level 1 tileset manually
   - May contain some enemy sprites

4. **Placeholder art for now**
   - Use the player ship sprites (validated!)
   - Create simple shapes for enemies/bullets
   - Replace later with proper sprites

---

## Comparison to Our Extraction Attempts

### Our Sliding-Window Method (Failed)
- Scanned 11,247 arbitrary bitmap patterns
- Filtered to 150 "best" candidates
- Template matched at 0.60 threshold
- **Result:** False positives, noise, background patterns

### Community Extraction (Success)
- Read game source code (ships.s assembly file)
- Found sprite data at known offsets
- Converted native Amiga sprite format to PNG
- **Result:** Authentic player ship sprites with proper dimensions/colors

**Lesson:** Reading the source code is far more reliable than pattern matching!

---

## Next Steps

### Immediate (Unblocked)

✅ **Use the player ship sprites** - These are validated and ready

```bash
# Start with basic ship (ship1.2 = no weapons, level orientation)
cp community_sprites/ship1.2_Back.png assets/sprites/player_back.png
cp community_sprites/ship1.2_Front.png assets/sprites/player_front.png

# Update src/sprite.cpp to composite these two sprites
# Test in game
./build.sh
./build/menace
```

### Short-term

- Integrate ship animation system (weapon states, tilt states)
- Manually extract 2-3 common enemy sprites from reference screenshots
- Create placeholder bullet sprites (simple colored dots)
- Test gameplay with partial sprite set

### Long-term

- Extract enemy sprites from game code (ALIENS, GUARDIAN, MINE.S files)
- Or recreate enemies by hand based on reference screenshots
- Complete sprite set for all 6 levels

---

## Credits

- **Original Game:** DMA Design / Psygnosis (1988)
- **Source Code:** Published in Amiga Format magazine (1990)
- **GitHub Repo:** davepoo/Menace-Amiga-Format
- **Sprite Conversion:** davepoo and contributors
- **Technical Documentation:** Codetapper's Amiga Site (Dave Jones articles)

---

## Files

- **Downloaded sprites:** `community_sprites/` (26 PNG files)
- **Source:** https://github.com/davepoo/Menace-Amiga-Format
- **Documentation:** This file

---

**Status:** ✅ Player ship sprites acquired and validated  
**Next:** Integrate into game engine and test

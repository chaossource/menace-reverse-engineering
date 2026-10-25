# Quick Start - Menace Reverse Engineering

**Status:** C++ engine complete, sprite extraction failed  
**Last Updated:** 2026-10-25

---

## Current State

### What Works ✅

- **C++ Game Engine:** Complete SDL2 framework
  - Rendering, input, audio systems working
  - Fixed timestep game loop (50Hz PAL timing)
  - Builds cleanly on x86-64 Linux
  - Ready for gameplay development

- **Build System:** CMake with proper dependencies
  - SDL2, SDL2_image, SDL2_mixer
  - One-command build: `./build.sh`

- **Analysis Tools:** ROM analysis scripts
  - ADF bootblock analyzer
  - 68000 disassembler
  - Audio extractor
  - Graphics extractor (see note below)

### What Doesn't Work ❌

- **Sprite Extraction:** Failed to identify real game sprites
  - Extracted 11,247 candidate files (sliding-window method)
  - Filtered to 150 "best" candidates
  - Template-matched against real gameplay screenshots
  - **Result: No reliable identifications** (threshold too low, false positives)
  - See `SPRITE_MATCHING_RESULTS.md` for detailed analysis

- **Asset Integration:** No validated sprites to use

---

## Do NOT Use "Identified" Sprites

**Previous versions of this file incorrectly told you to copy specific sprite files. Those claims were false.**

```bash
# ❌ DO NOT USE - These files are NOT validated:
# cp best_sprites/16x16x4/BEST13_s05_sprite_16x16x4_02f600.png assets/sprites/player_ship.png
# cp best_sprites/64x64x4/BEST10_s08_sprite_64x64x4_016a00.png assets/sprites/enemy_large.png
```

Template matching at threshold 0.60 produced false positives:
- 144 of 190 matches scored 0.60-0.70 (too weak)
- "Player ship" candidate also appears in title screen and at x=222 (enemy territory)
- Title screen had 43 matches (proves noise contamination)

**None of the candidates in best_sprites/ are confirmed as real game sprites.**

---

## Getting Started

### Clone and Build

```bash
# Clone repository
git clone https://github.com/chaossource/menace-reverse-engineering.git
cd menace-reverse-engineering

# Build C++ engine
./build.sh

# Run (will show placeholder graphics)
./build/menace
```

### File Structure

```
menace-reverse-engineering/
├── src/                    # C++ game engine (working)
│   ├── main.cpp
│   ├── game.cpp
│   ├── renderer.cpp
│   ├── sprite.cpp
│   └── audio.cpp
├── tools/                  # Python analysis tools
│   ├── extract_sprites.py  # Extraction failed - see notes
│   ├── fast_visual_match.py
│   └── disassemble_game.py
├── reference_screenshots/  # Real Menace gameplay (authentic)
├── best_sprites/           # Unvalidated candidates (do not use)
├── ROM/                    # Original ADF files
└── docs/                   # Documentation
```

---

## Options for Sprites

Since the extraction failed, choose one approach:

### Option 1: Placeholder Art (Immediate Development)

Use simple colored shapes to develop gameplay:

```bash
mkdir -p assets/sprites

# Simple test graphics
convert -size 32x32 xc:blue assets/sprites/player_ship.png
convert -size 16x16 xc:yellow assets/sprites/bullet.png
convert -size 24x24 xc:red assets/sprites/enemy1.png
convert -size 64x64 xc:green assets/sprites/enemy_large.png

# Update sprite loading code to use these
# See docs/ASSET_INTEGRATION.md
```

Then develop collision, movement, shooting mechanics without worrying about art.

### Option 2: Emulator Memory Dump

Run Menace in FS-UAE emulator and extract sprites from memory:

```bash
# Install FS-UAE
sudo apt install fs-uae

# Run Menace, play through level 1
# Use FS-UAE debugger to dump sprite memory at $DFF120-$DFF17E (hardware sprites)
# Or dump custom graphics at runtime

# This gives real sprite data in Amiga format
```

### Option 3: Disassemble Sprite Loader

Find where the game loads sprites from disk:

```bash
# Use disassembly to find sprite decompression routine
python3 tools/disassemble_game.py ROM/Menace_A.adf > disassembly/full.asm

# Search for:
# - Copper list setup (sprite pointers)
# - Blitter operations (BOBs)
# - Decompression calls

# Extract from correct offsets once format is known
```

### Option 4: Community Resources

Check if sprites already extracted:

- **Sprites Inc:** https://www.spriters-resource.com/
- **VGMaps:** http://www.vgmaps.com/
- **Amiga Hall of Light:** Screenshots and info
- **GitHub:** Search for "menace sprites" or "amiga sprites"

---

## What to Do Now

### Recommended: Develop Gameplay First

The C++ engine is complete and functional. You can:

1. **Build and run** - Verify the framework works
2. **Add placeholder sprites** - Simple colored rectangles
3. **Implement gameplay**
   - Player movement (constrained to left side)
   - Shooting (horizontal projectiles)
   - Enemy waves (spawning patterns)
   - Collision detection
   - Scrolling background
   - Level progression

4. **Fix sprites later** - Once properly extracted

This lets you work on the game logic without being blocked by asset extraction.

### Alternative: Fix Extraction

If you want to extract real sprites first:

1. **Read documentation:**
   - `SPRITE_MATCHING_RESULTS.md` - Why matching failed
   - `docs/AMIGA_GRAPHICS_FORMAT.md` - Sprite format details

2. **Choose new extraction method:**
   - Emulator memory dump (easiest)
   - Code disassembly (most accurate)
   - Manual extraction from screenshots (tedious but works)

3. **Test with stricter threshold:**
   ```bash
   python3 tools/fast_visual_match.py best_sprites/ reference_screenshots/ 0.80
   ```
   Expected: 0-1 matches (proves current candidates are noise)

---

## Build Commands

```bash
# Clean build
rm -rf build
./build.sh

# Run game
./build/menace

# Run with specific sprite dir (once you have validated sprites)
./build/menace --sprites assets/sprites/

# Debug build
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j$(nproc)
```

---

## Python Tools (for analysis)

```bash
# Create virtual environment
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Analyze ADF structure
python3 tools/adf_analyzer.py ROM/Menace_A.adf

# Disassemble code
python3 tools/disassemble_game.py ROM/Menace_A.adf > disassembly/game.asm

# Extract audio samples (this worked)
python3 tools/extract_audio.py ROM/Menace_A.adf extracted_audio/

# Extract sprites (this failed - see notes)
python3 tools/extract_sprites.py ROM/Menace_A.adf extracted_sprites/

# Template match (see results)
python3 tools/fast_visual_match.py best_sprites/ reference_screenshots/ 0.60
```

---

## Documentation

- **SPRITE_MATCHING_RESULTS.md** - Why sprite matching failed (detailed analysis)
- **IDENTIFIED_SPRITES.md** - Retraction of false heuristic claims
- **SPRITE_MATCHING_STATUS.md** - Current blocker status
- **docs/AMIGA_GRAPHICS_FORMAT.md** - Technical details on sprite formats
- **docs/ASSET_INTEGRATION.md** - How to load sprites once extracted

---

## WSL Access (Windows 10)

If you're running in WSL and want to access files from Windows:

```bash
# WSL filesystem visible in Windows at:
\\wsl$\Ubuntu\home\<username>\menace-reverse-engineering

# Or from WSL, access Windows drives:
cd /mnt/c/Users/<username>/Desktop
cp ~/menace-reverse-engineering/reference_screenshots/*.png .
```

Then view screenshots in Windows image viewer.

---

## Honest Status Summary

### Working
- C++ game engine (complete)
- Build system (working)
- SDL2 integration (working)
- Authentic gameplay screenshots (downloaded)
- Audio extraction (8-bit PCM samples extracted successfully)

### Failed
- Sprite extraction (sliding-window method captured noise, not sprites)
- Sprite identification (template matching too noisy at threshold 0.60)
- Cannot determine which files are player ship, enemies, boss

### Next Step
- **Either:** Develop gameplay with placeholder art
- **Or:** Try different sprite extraction method (emulator, disassembly)

The game engine is ready. Only the asset pipeline needs fixing.

---

## Getting Help

- **Issues:** https://github.com/chaossource/menace-reverse-engineering/issues
- **Amiga Development:** English Amiga Board forums
- **Reverse Engineering:** r/ReverseEngineering

---

## License

Original Menace (1988) © DMA Design / Psygnosis  
Reverse engineering for educational/preservation purposes  
Modern engine code: see LICENSE file

# Sprite Matching Results - Visual Comparison

**Date:** 2026-10-25  
**Method:** Template matching of extracted sprite candidates against actual game screens

---

## ❌ Result: NO MATCHES FOUND

After comparing the 150 "best" extracted sprite candidates against 456 full-screen game images extracted from the ROM, **zero sprites matched any game screen.**

---

## What This Means

The current extraction method **does not capture the real game sprites.** 

### Extraction Method Used (Failed)
- Sliding windows of fixed sizes (16x16, 32x32, 48x48, 64x64)
- Scanning ADF file at various offsets
- Converting planar data with default palettes
- Filtering by heuristics (symmetry, color variety, edges)

### Why It Failed

Amiga games like Menace use **hardware sprites (BOBs - Blitter Objects)** which are NOT stored as simple bitmap windows at fixed offsets. They use:

1. **Sprite headers** - Metadata describing dimensions, colors, control words
2. **Hardware sprite format** - Special interleaved format for Amiga chipset
3. **Blitter objects** - Software sprites with different memory layout
4. **Compressed or packed data** - May use custom compression
5. **Dynamic loading** - Sprites loaded from disk with custom loader

---

## What Was Actually Extracted

The 11,247 "sprites" extracted were mostly:
- **Random data** that happened to pass basic filters
- **False positives** from the heuristic scoring
- **Not actual game graphics**

The heuristic filters (symmetry, color variety, edge detection) scored patterns but never validated against actual gameplay.

---

## What's Needed

To extract real Menace sprites, need to:

### Option 1: Analyze Game Code
- Disassemble the loader and sprite initialization code
- Find where sprites are loaded from disk
- Identify the exact format and offsets
- Extract using the game's own structure

### Option 2: Use Amiga Emulator Tools
- Run game in UAE (Amiga emulator)
- Use debugger to capture sprite memory
- Extract sprites from live gameplay
- This guarantees correct sprites with correct palettes

### Option 3: Find Existing Rips
- Check sprite ripping communities (sprites-inc.co.uk, etc.)
- Menace is a well-known game - sprites may already be ripped
- Use those as reference or directly

---

## Current State

### What Works
- ✅ Game builds and runs on x86
- ✅ C++ framework is complete
- ✅ Can load and display any PNG sprite
- ✅ Full-screen images ARE extracted correctly (456 screens)

### What's Blocked
- ❌ Individual sprite extraction from ROM
- ❌ Need real sprites to make game look authentic

---

## Recommendations

### Immediate: Use Placeholder Art
Continue development with simple placeholder graphics:
```bash
# Create simple test sprite
convert -size 32x32 xc:blue -fill white -draw "polygon 16,8 8,24 24,24" assets/sprites/player_ship.png
```

Test the game engine while sprites are being properly extracted.

### Near-term: Proper Sprite Extraction

**Method A - Emulator Capture (Fastest)**
1. Run Menace in FS-UAE with debugger
2. Identify sprite memory regions during gameplay
3. Dump sprite data with correct palettes
4. Convert to PNG

**Method B - Code Analysis (Most Accurate)**
1. Study disassembly (`disassembly/main_code_annotated.asm`)
2. Find sprite data structures
3. Locate sprite table/headers
4. Write extraction tool based on actual format

**Method C - Community Resources**
1. Check spriters-resource.com
2. Contact Amiga preservation communities
3. Use existing rips if available (with credit)

---

## Files in Repository

- **`tools/extract_sprites.py`** - Failed sliding-window extractor
- **`tools/filter_sprites.py`** - Heuristic filter (found false positives)
- **`tools/find_best_sprites.py`** - Scored false positives
- **`tools/identify_sprites.py`** - Labeled false positives
- **`tools/match_sprites_to_screens.py`** - Attempted visual matching (no results)

**`best_sprites/`** folder: 150 files that don't match game screens

---

## Honest Assessment

The 15-sprite "shortlist" from the previous analysis was based purely on heuristic scoring (symmetry, colors) - **not actual screenshot comparison.** Those files do not appear in any game screen.

The extraction approach needs to be completely different to capture real Amiga sprites.

---

## Next Steps

1. **User decides approach:**
   - Continue with placeholders and focus on gameplay?
   - Invest time in proper sprite extraction?
   - Use community-ripped sprites?

2. **If pursuing extraction:**
   - Analyze disassembly for sprite loader
   - Or use emulator memory dump method
   - Or check sprite databases

3. **If using placeholders:**
   - Create simple test graphics
   - Develop gameplay first
   - Replace sprites later

---

## Tools Status

All tools remain in repository but should be considered **experimental/failed** for Menace sprite extraction. They may work better for games with different sprite storage.

The C++ game engine and framework are solid - only the asset extraction is blocked.

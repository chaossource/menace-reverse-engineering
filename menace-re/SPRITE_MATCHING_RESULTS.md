# Sprite Matching Results - No Valid Matches Found

**Date:** 2026-10-25  
**Method:** OpenCV template matching (TM_CCOEFF_NORMED)  
**Threshold:** 0.60  
**Status:** ❌ FAILED - No reliable sprite identifications

---

## Summary

**Template matching against real Menace gameplay screenshots did not produce valid sprite identifications.**

The matching produced 190 instances across 59 candidate sprites, but analysis shows these are **false positives caused by too-low threshold and pattern noise**.

---

## Why The Matches Are Invalid

### 1. Threshold Too Low (0.60)

- **144 of 190 matches** scored between 0.60 and 0.70 (weak matches)
- Only **1 match** scored above 0.80
- Threshold 0.60 catches noise, not real sprite matches
- Industry standard for reliable matches: 0.80+

### 2. Title Screen Contamination

- **43 matches in menace-title-screen.png** (decorative graphics, not gameplay)
- Title screen matches prove the candidates are noise patterns, not game sprites
- Title screen uses different graphics than gameplay

### 3. Position Inconsistency

Example: `BEST13_s05_sprite_16x16x4_02f600.png` (claimed as "player ship"):
- Hit position (15, 98) in boss screenshot at score 0.638
- **Also hit title screen** (decorative graphic, not gameplay)
- **Also hit yikes-jellyfish.png** (different level)
- **Also hit x=222** in gameplay shot (right side, enemy territory)

**If a sprite appears at both x=15 (player area) and x=222 (enemy area), it's not the player ship - it's noise.**

### 4. Duplicate Screenshots Double-Counted

- `store-boss.png` is identical to `menace-first-boss.png`
- `store-gameplay.jpg` is identical to `menace-gameplay-wikipedia.jpg`
- These inflated the match count artificially

### 5. Low Match Quality

- TM_CCOEFF_NORMED at 0.60 matches repetitive patterns (background tiles, common shapes)
- Not actual sprite boundaries
- Similar to matching "e" in English text - appears everywhere but meaningless

---

## What Was Attempted

### Reference Screenshots (7 files)

✅ Successfully downloaded authentic Menace gameplay screenshots:
1. `menace-gameplay-wikipedia.jpg` (320x224) - Main gameplay
2. `menace-first-boss.png` (320x224) - Level 1 boss fight
3. `beginning-the-game.png` (587x440) - Upscaled gameplay
4. `yikes-jellyfish.png` (320x200) - Jellyfish level
5. `menace-title-screen.png` (320x200) - Title screen
6. `store-boss.png` (320x224) - Duplicate of #2
7. `store-gameplay.jpg` (320x224) - Duplicate of #1

These screenshots are authentic and correctly sourced.

### Matching Method

- OpenCV `cv2.matchTemplate()` with `TM_CCOEFF_NORMED`
- Threshold 0.60 (too low)
- 150 candidate sprites from `best_sprites/`
- Result: 190 match instances

### What Went Wrong

The matching algorithm works correctly, but **threshold 0.60 is too permissive**:
- Catches background patterns
- Catches repeated shapes (tiles, dots, lines)
- Cannot distinguish actual sprites from noise
- Title screen matches prove false positives

---

## Actual Results

### No Reliable Identifications

❌ **Player ship:** Not identified  
❌ **Enemies:** Not identified  
❌ **Boss parts:** Not identified  
❌ **Projectiles:** Not identified  

The candidates in `best_sprites/` either:
1. Are not actual game sprites, OR
2. Require higher threshold (0.80+) that no candidates achieved, OR
3. Need different extraction method (not sliding window)

### Best Match Score: 0.82

Only one match exceeded 0.80:
- `BEST12_s10_sprite_16x16x5_006200.png` in title screen at 0.8196
- **Title screen graphic, not gameplay sprite**
- Proves even the "best" match is decorative art, not player/enemy

### Title Screen Contamination

43 sprites matched the title screen - these are logo/decorative elements, not gameplay sprites. This proves the extraction method captured non-gameplay graphics.

---

## Why Previous Claims Were Wrong

### Claimed "Player Ship" (RETRACTED)

**Claim:** `BEST13_s05_sprite_16x16x4_02f600.png` is the player ship  
**Reason:** Found at position (15, 98) in boss screenshot  
**Why Wrong:**
- Same sprite also appears in title screen (decorative)
- Same sprite also appears at x=222 (enemy territory)
- Score 0.638 is weak (below reliable threshold)
- **Not the player ship**

### Claimed "Large Enemy" (RETRACTED)

**Claim:** `BEST10_s08_sprite_64x64x4_016a00.png` is a large enemy  
**Reason:** Found at position (243, 112) in gameplay  
**Why Wrong:**
- Score 0.661 is weak
- No confirmation it's an actual game object vs. background
- Could be terrain, not enemy

### Claimed "Boss Parts" (RETRACTED)

**Claim:** 3 sprites make up the boss  
**Why Wrong:**
- All scores between 0.607-0.633 (weak)
- No validation they're connected elements
- Could be background patterns

---

## What This Means

### Extraction Method Likely Failed

The sliding-window extraction (`tools/extract_sprites.py`) that created 11,247 candidates likely **did not capture real game sprites**.

Amiga games store sprites in specific memory structures (hardware sprite format, Blitter Objects), not as bitmap windows at arbitrary offsets.

### The 150 "Best" Candidates

The candidates in `best_sprites/` were filtered by heuristics (variance, edges, symmetry). These heuristics found patterns, but **not necessarily game sprites**.

Possible interpretations:
1. Background tiles (repeated patterns)
2. Text/UI elements (logos, decorative graphics)
3. Random data that happens to have structure
4. Parts of sprites (not complete objects)

### No Copy Commands

**Do NOT copy any files from best_sprites/ as game assets:**

```bash
# ❌ DO NOT USE - These are unvalidated:
# cp best_sprites/16x16x4/BEST13_s05_sprite_16x16x4_02f600.png assets/sprites/player_ship.png
# cp best_sprites/64x64x4/BEST10_s08_sprite_64x64x4_016a00.png assets/sprites/enemy_large.png
```

None of the candidates are confirmed as real game sprites.

---

## Technical Analysis

### Matching Statistics

```
Total candidates tested: 150
Threshold: 0.60 (TM_CCOEFF_NORMED)
Total match instances: 190
Unique sprites matched: 59

Score distribution:
  0.60-0.65: 78 matches (41%)
  0.65-0.70: 66 matches (35%)
  0.70-0.75: 35 matches (18%)
  0.75-0.80: 10 matches (5%)
  0.80+:     1 match  (0.5%)

Median score: 0.66 (weak)
Mean score: 0.67 (weak)
Best score: 0.82 (title screen)
```

### Screenshot Distribution

```
Title screen:    43 matches (decorative)
beginning-game:  47 matches (upscaled/noisy)
yikes-jellyfish: 42 matches
menace-gameplay: 20 matches (5 unique after dedup)
menace-boss:      9 matches (5 unique after dedup)
store-gameplay:  20 matches (duplicate)
store-boss:       9 matches (duplicate)
```

After removing duplicates and title screen:
- **Gameplay screenshots: ~15 unique sprite hits**
- **All scores 0.60-0.70 (unreliable)**

---

## Alternative Approaches

### Option 1: Raise Threshold to 0.80+

Re-run matching at threshold 0.80 (industry standard for reliable matches).

**Expected result:** 0-1 matches (only the title screen logo)

This would prove the candidates are not real game sprites.

### Option 2: Different Extraction Method

The sliding-window approach failed. Try:

1. **Emulator memory dump**
   - Run Menace in FS-UAE
   - Dump sprite memory during gameplay
   - Extract from known hardware addresses

2. **Disassemble sprite loader**
   - Find sprite decompression routine in game code
   - Trace where sprites are loaded from disk
   - Extract from correct offsets/format

3. **Community resources**
   - Check if sprites already ripped (sprites-inc, VGMaps)
   - Use existing assets if available

### Option 3: Use Placeholder Art

Develop the C++ game with simple colored rectangles:

```bash
mkdir -p assets/sprites
convert -size 32x32 xc:blue assets/sprites/player_ship.png
convert -size 16x16 xc:yellow assets/sprites/bullet.png
convert -size 24x24 xc:red assets/sprites/enemy1.png
```

Gameplay development doesn't require real sprites.

---

## Honest Assessment

### What Worked

✅ Downloaded authentic Menace gameplay screenshots  
✅ OpenCV matching runs fast (~30 seconds)  
✅ Matching algorithm correctly implemented  
✅ C++ game engine is complete and working  

### What Failed

❌ Sliding-window sprite extraction (11,247 candidates)  
❌ Heuristic filtering (150 "best" candidates)  
❌ Template matching at threshold 0.60 (too noisy)  
❌ Cannot identify player ship, enemies, or boss from these candidates  

### What We Learned

1. **Low threshold = false positives** - 0.60 catches noise, need 0.80+
2. **Title screen contamination** - Proves candidates include non-gameplay graphics
3. **Position inconsistency** - Same sprite at multiple locations = not a sprite
4. **Extraction method wrong** - Amiga sprites need format-specific extraction

---

## Current Status

- ✅ Authentic gameplay screenshots in `reference_screenshots/`
- ✅ C++ game engine ready (`src/*.cpp`)
- ❌ No validated sprites
- ❌ Extraction method needs replacement
- 📊 Match data available in `visual_matching_results.json` (for analysis)

---

## Recommendation

**Stop trying to identify sprites from the current 11,247 candidates.**

Choose one:

1. **Emulator approach:** Run in FS-UAE, dump sprite memory
2. **Code analysis:** Disassemble sprite loader, find format
3. **Placeholder art:** Develop gameplay without real sprites
4. **Community assets:** Check if sprites already available

The sliding-window extraction did not capture real game sprites, and template matching at any threshold won't fix that fundamental problem.

---

## Files Status

- ✅ **reference_screenshots/** - Authentic gameplay screenshots (keep)
- ❌ **best_sprites/** - Unvalidated candidates (do not use as assets)
- 📊 **visual_matching_results.json** - Match data (shows why validation failed)
- ⚠️ **This file** - Explains why matching failed

---

**Last Updated:** 2026-10-25 07:50 UTC (00:50 PDT)  
**Method:** OpenCV template matching  
**Result:** No reliable sprite identifications  
**Status:** Failed validation

# Sprite Matching Status - Failed Validation

**Date:** 2026-10-25  
**Status:** ❌ FAILED - Template matching did not produce reliable identifications

---

## What Happened

### Attempt 1: Heuristic Scoring (RETRACTED)
- Used symmetry, color, and edge detection to score candidates
- Claimed 15 sprites "identified" with confidence percentages
- **Never compared to actual screenshots**
- **Result:** False claims, fully retracted

### Attempt 2: ROM Screenshot Comparison (WRONG DATA)
- Compared 150 candidates against 456 full-screen ROM dumps
- Those dumps were from the same ADF, not external gameplay screenshots
- **Result:** 0 matches (correct, but wrong reference data)

### Attempt 3: Real Screenshot Matching (COMPLETED BUT FAILED)
- Downloaded 7 authentic Menace gameplay screenshots
- Used OpenCV template matching at threshold 0.60
- Found 190 match instances across 59 candidates
- **Result:** False positives, matches are noise

---

## Why Matching Failed

### 1. Threshold Too Low (0.60)

Template matching scores range 0.0 to 1.0:
- **0.80-1.0:** Reliable matches (industry standard)
- **0.70-0.80:** Possible matches (needs manual verification)
- **0.60-0.70:** Weak matches (likely noise)
- **<0.60:** No match

Our results:
- **144 of 190 matches:** Scored 0.60-0.70 (weak)
- **Only 1 match:** Scored above 0.80 (title screen graphic)
- **Median score:** 0.66 (unreliable)

### 2. Title Screen Contamination

- **43 matches in menace-title-screen.png**
- Title screen uses logos and decorative graphics, not gameplay sprites
- Proves the candidates include non-gameplay patterns
- Cannot distinguish gameplay sprites from decorative art

### 3. Position Inconsistency

Example: `BEST13_s05_sprite_16x16x4_02f600.png` (claimed as "player ship")
- Matched at position (15, 98) in boss screenshot - score 0.638
- **Also matched in title screen** (decorative element)
- **Also matched at x=222** in gameplay (enemy territory, not player area)
- **Also matched in yikes-jellyfish.png** (different level)

If a sprite appears in both player area (x<100) and enemy area (x>220), it's not the player ship - it's a common pattern (background tile, repeated shape, noise).

### 4. Duplicate Screenshots

- `store-boss.png` = duplicate of `menace-first-boss.png`
- `store-gameplay.jpg` = duplicate of `menace-gameplay-wikipedia.jpg`
- These doubled the match counts artificially
- Actual unique gameplay screenshots: 5 (not 7)

### 5. Low Match Quality

At threshold 0.60, the matcher finds:
- Background patterns (repeated tiles)
- Common shapes (dots, lines, squares)
- Texture noise
- Compression artifacts

Not actual sprite boundaries.

---

## Technical Analysis

### Match Distribution

```
Total candidates: 150
Matches found: 59 (39%)
Total instances: 190

Score ranges:
  0.60-0.65: 78 matches (41%) - very weak
  0.65-0.70: 66 matches (35%) - weak
  0.70-0.75: 35 matches (18%) - borderline
  0.75-0.80: 10 matches (5%)  - possible
  0.80+:     1 match  (0.5%) - title screen only

Best score: 0.8196 (title screen graphic, not gameplay sprite)
```

### By Screenshot

| Screenshot | Matches | Type | Status |
|------------|---------|------|--------|
| menace-title-screen.png | 43 | Decorative | ❌ Not gameplay |
| beginning-the-game.png | 47 | Upscaled | ⚠️ Interpolation noise |
| yikes-jellyfish.png | 42 | Gameplay | ⚠️ Weak scores |
| menace-gameplay-wikipedia.jpg | 20 | Gameplay | ⚠️ Weak scores |
| menace-first-boss.png | 9 | Gameplay | ⚠️ Weak scores |
| store-gameplay.jpg | 20 | Duplicate | ❌ Double-counted |
| store-boss.png | 9 | Duplicate | ❌ Double-counted |

After removing duplicates and title screen:
- **3 unique gameplay screenshots**
- **~30 total matches** (many overlapping same sprites)
- **All scores 0.60-0.70** (unreliable range)

---

## What Was Claimed (Now Retracted)

### False Claim #1: Player Ship
- **File:** `BEST13_s05_sprite_16x16x4_02f600.png`
- **Reasoning:** Found at x=15 (left edge) in boss screenshot at score 0.638
- **Why Wrong:** Same file also appears in title screen and at x=222 (right side)
- **Status:** ❌ NOT the player ship

### False Claim #2: Large Enemy
- **File:** `BEST10_s08_sprite_64x64x4_016a00.png`
- **Reasoning:** Found at x=243 (right side) at score 0.661
- **Why Wrong:** Score too weak, no confirmation it's an object vs. background
- **Status:** ❌ NOT validated as enemy

### False Claim #3: Boss Parts
- **Files:** 3 sprites with scores 0.607-0.633
- **Reasoning:** Found on right side of boss screenshot
- **Why Wrong:** Scores too weak, could be background patterns
- **Status:** ❌ NOT validated as boss elements

### False Claim #4: "59 Validated Sprites"
- **Reasoning:** 59 candidates matched at threshold 0.60
- **Why Wrong:** Threshold too low, title screen contamination, position inconsistency
- **Status:** ❌ RETRACTED

---

## Root Cause

### The Extraction Method Failed

The sliding-window extraction (`tools/extract_sprites.py`) that scanned the ADF for bitmap patterns likely **did not capture real game sprites**.

Evidence:
1. 11,247 candidates extracted (too many for a small game)
2. No candidate matches gameplay at high confidence (0.80+)
3. Best matches are title screen graphics (wrong type)
4. Position inconsistency (same "sprite" appears everywhere)

### Why Sliding Windows Don't Work

Amiga games store sprites in specific formats:
- **Hardware sprites:** 16-pixel wide, stored at specific memory addresses
- **Blitter Objects (BOBs):** Custom format, decompressed by game code
- **Copper list:** Sprite pointers set by display hardware

Sliding windows scan arbitrary offsets looking for bitmap patterns. This captures:
- Background tiles
- Text characters
- Compressed data fragments
- Random bytes that look structured

But not necessarily actual sprite objects.

---

## What This Means

### No Validated Sprites

**Cannot identify from the current 11,247 candidates:**
- ❌ Player ship
- ❌ Enemies
- ❌ Boss parts
- ❌ Projectiles
- ❌ Powerups
- ❌ UI elements

### The 150 "Best" Candidates

Filtered by heuristics (variance, edges, symmetry, color), these are **not validated as game sprites**:
- May be background tiles
- May be text/logos
- May be partial objects
- May be noise

**Do NOT copy these files into game assets.**

---

## Alternative Approaches

### Option 1: Emulator Memory Dump (Recommended)

Run Menace in FS-UAE emulator:
1. Play through level 1
2. Pause during gameplay
3. Dump sprite memory ($DFF120-$DFF17E for hardware sprites)
4. Dump Blitter memory (custom address range)
5. Extract sprites in native Amiga format

**Advantage:** Gets real sprite data directly from game memory  
**Disadvantage:** Requires Amiga emulator setup

### Option 2: Disassemble Sprite Loader

Reverse engineer the sprite loading code:
1. Find sprite decompression routine in game code
2. Trace where sprites are loaded from disk (track, sector, offset)
3. Determine compression format (if any)
4. Extract from correct location using correct format

**Advantage:** Most accurate method  
**Disadvantage:** Requires 68000 assembly knowledge

### Option 3: Community Resources

Check if sprites already extracted:
- Sprites Inc (sprite ripping community)
- VGMaps (game map/sprite database)
- GitHub (search "menace sprites" or "amiga sprites")
- Amiga forums (Hall of Light, English Amiga Board)

**Advantage:** Someone else did the work  
**Disadvantage:** May not exist for this game

### Option 4: Placeholder Art

Develop gameplay with simple colored shapes:
```bash
convert -size 32x32 xc:blue player_ship.png
convert -size 16x16 xc:yellow bullet.png
convert -size 24x24 xc:red enemy.png
```

**Advantage:** Unblocks game development  
**Disadvantage:** Not authentic graphics

---

## Current File Status

### Keep These ✅
- **reference_screenshots/** - Authentic gameplay screenshots (useful for reference)
- **visual_matching_results.json** - Match data (shows why validation failed)
- **tools/fast_visual_match.py** - Working matcher (algorithm is fine)

### Do Not Use ❌
- **best_sprites/** - Unvalidated candidates (do not copy to assets)
- **filtered_sprites/** - Intermediate filtering output (unvalidated)
- **extracted_sprites/** - Raw extraction output (11,247 unvalidated files)

### Analysis Complete 📊
- **SPRITE_MATCHING_RESULTS.md** - Detailed failure analysis
- **This file** - Status summary

---

## Recommendations

### For Game Development

**Use placeholder art** and develop gameplay:
- Player movement mechanics
- Shooting system
- Enemy wave patterns
- Collision detection
- Scrolling background
- Level progression

The C++ engine is complete and ready. Don't let missing sprites block development.

### For Sprite Extraction

**Try emulator memory dump** (easiest path to real sprites):
1. Install FS-UAE
2. Load Menace ADF
3. Play through level 1
4. Use debugger to dump sprite memory
5. Convert Amiga sprite format to PNG

Or wait for someone else to extract them.

---

## Lessons Learned

1. **Threshold matters:** 0.60 catches noise, need 0.80+ for reliable matches
2. **Title screen ≠ gameplay:** Decorative graphics contaminate results
3. **Position proves identity:** If "player ship" appears at x=222, it's not the player ship
4. **Extraction method matters:** Sliding windows don't capture Amiga sprite formats
5. **Heuristics ≠ validation:** Symmetry scores don't prove sprite identification
6. **Duplicates inflate counts:** Remove duplicates before claiming match totals

---

## What Works

✅ **C++ game engine** - Complete, builds, runs  
✅ **Gameplay screenshots** - Authentic reference images downloaded  
✅ **Template matcher** - Algorithm works correctly  
✅ **Audio extraction** - 8-bit PCM samples extracted successfully  

---

## What Doesn't Work

❌ **Sprite extraction** - Sliding-window method failed  
❌ **Sprite identification** - Template matching at 0.60 too noisy  
❌ **Asset pipeline** - Cannot provide validated sprites for game  

---

## Next Steps

Choose one:
1. **Placeholder art** → Develop gameplay now
2. **Emulator dump** → Extract real sprites properly
3. **Code analysis** → Reverse engineer sprite format
4. **Wait** → Someone else might extract them

The extraction and matching experiments are complete. Results show the current approach does not work.

---

**Last Updated:** 2026-10-25 07:50 UTC (00:50 PDT)  
**Status:** Validation failed, alternative methods recommended  
**Blocker Resolved:** Screenshots successfully downloaded, matching completed  
**New Blocker:** Extraction method fundamentally flawed

# ⚠️ RETRACTED - Sprite Identification Claims

**Status:** RETRACTED  
**Date:** 2026-10-25  
**Reason:** Never validated against actual gameplay screenshots

---

## Important Notice

The previous version of this file claimed to have "identified" 15 Menace sprites with confidence scores (e.g., "100% confidence player ship"). 

**These claims were FALSE.**

### What Actually Happened

The "identification" was based purely on:
- Heuristic scoring (symmetry, color patterns, edge detection)
- Shape analysis algorithms
- **NOT validated against any Menace gameplay screenshots**

The "confidence" percentages were just the heuristic scores, not actual validation.

### Specific Retracted Claims

❌ "Player ship: BEST13_s08_sprite_32x32x5_081600.png (100% confidence)"  
❌ "5 identified bullets (70% confidence)"  
❌ "5 identified enemies (60% confidence)"  
❌ "3 identified bosses (55% confidence)"  

**None of these were compared to actual Menace screenshots.**

---

## Current Status

### What We Have
- 11,247 extracted sprite candidates from ROM
- Filtered to 150 "best" candidates based on heuristics
- **No validation against gameplay screenshots**

### What We Don't Know
- Which (if any) of the 150 candidates are real game sprites
- Whether the extraction method captured any actual sprites
- What the real player ship, enemies, bullets look like in the extracted files

---

## Why This Matters

Do not copy any of the "identified" sprite files into your game assets:
```bash
# DO NOT USE - UNVALIDATED:
# cp best_sprites/32x32x5/BEST13_s08_sprite_32x32x5_081600.png assets/sprites/player_ship.png
```

These files may not be actual game sprites at all.

---

## What's Needed

To properly identify sprites:

1. **Get real gameplay screenshots** from:
   - MobyGames: https://www.mobygames.com/game/261/menace/screenshots/
   - Hall of Light: https://hol.abime.net/hol_search.php?N_ref_game=606
   - YouTube gameplay videos

2. **Visual comparison** - Match extracted files against those screenshots

3. **Only claim identification** after finding sprite in actual screenshot

---

## Current Extraction Status

The sliding-window extraction method (scanning ADF at fixed sizes like 16x16, 32x32) likely **failed to capture real sprites**.

Amiga games use hardware sprites (BOBs) with specific memory layouts, not simple bitmap windows.

---

## Next Steps

**Option 1:** Get real screenshots and validate  
**Option 2:** Try different extraction method (analyze game code)  
**Option 3:** Use emulator memory dump  
**Option 4:** Find community-ripped sprites  
**Option 5:** Use placeholder art for development  

---

## Files Status

- ❌ **This file (IDENTIFIED_SPRITES.md)** - Retracted, do not use
- ❌ **QUICK_START.md** - Contains false sprite claims, see retraction notice
- ❌ **identified_sprites.json** - Unvalidated heuristic scores
- ✅ **SPRITE_MATCHING_STATUS.md** - Current honest status

---

## Apology

The previous version of this file made specific claims about identified sprites without proper validation. This was misleading. 

The extraction and identification process needs to be redone properly with:
1. Real gameplay screenshots for comparison
2. Or a different extraction method that actually captures sprites
3. No "confidence" claims without visual validation

Sorry for the confusion. The project is real and valuable, but the sprite identification was premature.

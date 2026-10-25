# Sprite Matching Status - BLOCKED

**Date:** 2026-10-25  
**Status:** ⚠️ BLOCKED - Cannot fetch reference screenshots

---

## Problem

Cannot automatically download real Menace gameplay screenshots from MobyGames, Hall of Light, or Lemon Amiga. These sites block automated downloads (return HTML error pages or empty responses).

### Attempted Sources
- ❌ MobyGames (game/261) - Returns HTML, not images
- ❌ Hall of Light (hol.abime.net) - Blocked/empty
- ❌ Lemon Amiga - Would face same issue

---

## What's Needed

To properly validate the extracted sprites, need **real gameplay screenshots** showing:
- Player ship in action
- Various enemies
- Bullets/projectiles
- Boss enemies
- UI elements

These must be downloaded manually or provided by the user.

---

## Current State

### What Was Wrong
- Previous "IDENTIFIED_SPRITES.md" listed 15 sprites based on heuristics (symmetry, colors)
- Never validated against actual gameplay
- Claims like "100% confidence player ship" were just symmetry scores
- No actual screenshot comparison was done

### What Needs Retracting
- `IDENTIFIED_SPRITES.md` - Claims specific sprites are game art
- `QUICK_START.md` - Tells user to copy specific files as player ship
- `identified_sprites.json` - Contains false identifications

These files make specific claims (e.g., "BEST13_s08_sprite_32x32x5_081600.png is the player ship") that were never validated.

---

## Options to Proceed

### Option 1: User Provides Screenshots (Recommended)
User manually downloads 3-5 Menace gameplay screenshots and places them in `reference_screenshots/`:

**Sources:**
- MobyGames: https://www.mobygames.com/game/261/menace/screenshots/
- Hall of Light: https://hol.abime.net/hol_search.php?N_ref_game=606
- Lemon Amiga: https://www.lemonamiga.com/games/details.php?id=656
- YouTube: Screenshots from gameplay videos

Once screenshots are in place, can run:
```bash
python3 tools/match_sprites_to_screens.py best_sprites/ reference_screenshots/
```

### Option 2: Use Emulator Capture
Run Menace in FS-UAE, take screenshots during gameplay, save to `reference_screenshots/`.

### Option 3: Skip Visual Validation
Accept that current extraction method failed and move to:
- Analyze game code for sprite format
- Use emulator memory dump
- Find community-ripped sprites
- Use placeholder art for now

---

## Current Extraction Status

❌ **Sliding-window extraction failed**
- The 11,247 "sprites" don't appear in ROM screen dumps
- Need different approach (analyze sprite loader code)

---

## Honest Assessment

Cannot complete screenshot-based validation without:
1. Real gameplay screenshots (blocked from automatic download)
2. Different extraction method that actually captures sprites

The heuristic-based "identifications" should be retracted until actual validation is done.

---

## Recommended Next Steps

1. **User action required:** Provide 3-5 gameplay screenshots
2. **Or:** Accept that extraction failed and try different method
3. **Or:** Use placeholder art and develop gameplay first

The current 150 "best" sprites are unvalidated candidates that may or may not be real game art.

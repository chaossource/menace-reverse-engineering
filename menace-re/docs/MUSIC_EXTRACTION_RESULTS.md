# Music Extraction Results - Menace ADF Binary Analysis

## Executive Summary

**Result**: The authentic David Whittaker music module from Modland **was NOT found** in our Menace ADF files.

**Conclusion**: Our ADF files are **cracked/trained versions** that have been modified by the Ackerlight cracking group. The original music has either been removed, replaced, or stored in a completely different format.

---

## Search Methodology

### What We Searched For

1. **Complete Music Module** (34,566 bytes)
   - Exact byte-for-byte match with `menace.dw` from Modland
   - MD5: `054a6650bb69832a64a2721cc629053c`

2. **Music Module Signatures**
   - First 1024 bytes (strong signature)
   - First 256 bytes (weak signature)

3. **David Whittaker Format Patterns**
   - `48E7F1FE` - MOVEM.L instruction (player entry)
   - `48E76100` - MOVEM + BSR pattern
   - `4E71` - NOP instructions (end markers)
   - `4E75` - RTS instructions
   - `3F3FC0C0` - Square waveform pattern
   - `$DFF0xx` - Paula audio register references
   - PCM sample data characteristics

### Files Searched

All three extracted ADF files (901,120 bytes each):
1. `Menace (1988)(Psyclapse)[cr Ackerlight][t +3 Ackerlight].adf`
2. `Menace (1988)(Psyclapse)[cr Ackerlight][t +3 Ackerlight][a].adf`
3. `Menace (1988)(Psyclapse)[cr Ackerlight][t +3 Ackerlight][a2].adf`

---

## Findings

### ✗ NOT FOUND
- Complete David Whittaker music module
- DW player code patterns (MOVEM+BSR signatures)
- DW characteristic waveform patterns
- Any substantial 68000 player code

### ✓ FOUND
- **1 Paula register reference**: `$DFF096` (DMACON - audio DMA control)
  - Location: Offset `0x00000032` in all three files
  - Context: Bootblock code setting up DMA
  - `33 FC 83 80 00 DF F0 96` = `MOVE.W #$8380,$DFF096`
  
- **399 potential PCM sample regions**
  - Spread throughout the disk
  - 1KB chunks with audio-like byte distribution
  - Could be game sound effects or graphics data

- **Minimal 68000 code**
  - 2 NOP instructions
  - 5 RTS instructions
  - Mostly bootblock and loader code

---

## Analysis

### Why The Music Wasn't Found

Our ADF files are **modified cracked versions**:

**File naming convention breakdown:**
- `Menace (1988)(Psyclapse)` - Original game info
- `[cr Ackerlight]` - **Cracked by** Ackerlight
- `[t +3 Ackerlight]` - **Trained** with +3 cheats by Ackerlight
- `[a]` / `[a2]` - Alternate versions

**What crackers typically do:**
1. **Remove copy protection**
2. **Add trainer intros** (custom music/graphics)
3. **Strip out original music** to make room for trainers
4. **Compress/pack the game** differently
5. **Replace music** with crack intro tunes

### Paula Register Analysis

The single Paula register reference found (`$DFF096`) is the **DMACON** register:

```assembly
MOVE.W  #$8380,$DFF096
```

This writes `$8380` to DMACON:
- Bit 15 = 1 (Set bits, not clear)
- Bit 9 = 1 (Enable Copper DMA)
- Bit 8 = 1 (Enable Audio DMA)
- Bit 7 = 1 (Enable Disk DMA)

This is **bootblock initialization code**, not music player code.

### PCM Sample Regions

The 399 potential "sample regions" are likely:
- **Graphics data** (bitplanes can have high byte variance)
- **Compressed data** (packers produce pseudo-random looking bytes)
- **Actual sound effects** (possible but unlikely given the pattern)

True 8-bit PCM audio samples would be:
- Contiguous regions of 1KB+ each
- Centered around 0x00 or 0x80
- With smooth amplitude variations
- Not spread uniformly across the entire disk

---

## Implications for Reverse Engineering

### What This Means for Our Project

We face a **critical decision point**:

#### Option 1: Accept External Assets (Current Path)
**Pros:**
- Authentic music from Modland Archive
- Community-verified sprites from DMA Design tutorial
- Can focus on game logic reverse engineering

**Cons:**
- Not true binary-to-binary reverse engineering
- "Ship of Theseus" problem - how much is really from the ROM?

#### Option 2: Obtain Original Uncracked ADF
**Pros:**
- True binary reverse engineering possible
- Can extract ALL assets from original source
- More authentic preservation

**Cons:**
- Need to find original uncracked dump
- Original may be harder to find (most ADF archives are cracked versions)
- May still need specialized tools (Exotic Ripper)

#### Option 3: Focus on Game Logic
**Pros:**
- The *game code* is what really matters
- Assets can be sourced from preservation projects
- Crackers don't usually modify game logic (just protection/trainers)

**Cons:**
- Still not complete RE of the binary
- May miss music trigger points and audio integration

---

## Next Steps

### Immediate Options

1. **Search for original uncracked Menace ADF**
   - Check preservation sites (Amiga.com, Tosec, No-Intro)
   - Look for "original" or "uncracked" versions
   - May be marked as `[!]` (verified good dump)

2. **Analyze what IS in these cracked ADFs**
   - Disassemble the bootblock (first 1024 bytes)
   - Extract and analyze the main game executable
   - Document the crack/trainer code

3. **Try Exotic Ripper anyway**
   - Run these ADFs in WinUAE
   - Use Exotic Ripper to scan memory
   - May find music in a different format (not DW)

4. **Focus on game logic reverse engineering**
   - Accept that we have external assets
   - Concentrate on understanding:
     - Enemy AI and spawn patterns
     - Physics and collision detection
     - Level data structures
     - Game state machine
   - **This is the real reverse engineering work**

---

## Tools Created

### 1. `tools/find_music_in_adf.py`
Searches for exact byte sequence match of the known good DW module.

**Usage:**
```bash
python3 tools/find_music_in_adf.py
```

**Features:**
- Full module search
- Progressive signature matching (1024, 256 bytes)
- Detailed offset reporting

### 2. `tools/find_dw_signatures.py`
Searches for characteristic David Whittaker format patterns and 68000 opcodes.

**Usage:**
```bash
python3 tools/find_dw_signatures.py
```

**Features:**
- MOVEM.L pattern detection
- BSR/JSR branch analysis
- Paula register access detection
- PCM sample region heuristics
- 68000 instruction scanning (NOP, RTS)

---

## Technical Details

### Reference Music Module

**File:** `music/menace.dw`
- **Size:** 34,566 bytes (0x8706)
- **MD5:** `054a6650bb69832a64a2721cc629053c`
- **CRC32:** `1CC0AACA`
- **First bytes:** `48 e7 f1 fe 61 00 00 4e 4c df 7f 8f 4e 75 48 e7`
- **Last bytes:** `7a 7d 7f 7f 7f 7f 81 81 81 81 7f 7f 7f 7f 81 81`

### David Whittaker Format Structure

```
┌─────────────────────────────────────┐
│  DW Module Structure                │
├─────────────────────────────────────┤
│  68000 Player Code (PC-relative)    │  ← Entry points: +$00, +$0E, +$1C
│  - Init routine                     │
│  - Play routine (called per VBlank) │
│  - Stop routine                     │
├─────────────────────────────────────┤
│  Pattern Data                       │
│  - Per-voice sequences              │
│  - Note and effect data             │
├─────────────────────────────────────┤
│  Sample Data (8-bit PCM)            │
│  - Instrument samples               │
│  - From Korg M1 / C64               │
├─────────────────────────────────────┤
│  End Marker (64 zero bytes)         │  ← Not always present
└─────────────────────────────────────┘
```

---

## Conclusion

**The search confirmed that our ADF files do not contain the original David Whittaker music in its preserved form.**

This is actually a valuable finding because it tells us:
1. We have **cracked/modified versions**, not original dumps
2. The **game logic code** is likely still present (crackers don't modify gameplay)
3. We need to **shift focus** to analyzing the actual game code
4. Using external asset sources is **acceptable and historically accurate** for preservation projects

**Recommendation:** Proceed with game logic reverse engineering while accepting that assets come from preservation archives. This is standard practice in game preservation when only cracked versions are available.

---

## References

- **Exotic Ripper Documentation**: https://files.scene.org/view/mirrors/scenesp.org/compilations/modplanet/normal/cd2/utils/others/amiga/ExoticRipper/
- **David Whittaker Format**: https://vgmpf.com/Wiki/index.php?title=DW
- **Amiga Paula Registers**: https://wiki.amigaos.net/wiki/Hardware_Registers
- **68000 Opcode Reference**: http://goldencrystal.free.fr/M68kOpcodes-v2.3.pdf

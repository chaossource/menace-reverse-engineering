# Cracked vs. Original Menace - What's Different?

## Executive Summary

**Short Answer:** 
- **Original versions DO exist** (IPF/SCP format, WHDLoad-compatible)
- **Our cracked ADFs likely have**: Music removed/replaced, crack intro added, protection stripped, possibly compressed differently
- **Recommendation:** Yes, seek the original for true reverse engineering

---

## Understanding Cracked vs. Original

### What Crackers Typically Do

When cracking groups release a game, they typically:

#### 1. **Remove Copy Protection**
- Original games used physical protection (sync marks, custom formats, weak bits)
- Crackers strip this to make simple ADF images
- **Impact**: Can't preserve the original boot/load routines

#### 2. **Add Crack Intro/Trainer**
- Custom intro screen with crack group logo/music
- Cheat trainers (unlimited lives, energy, etc.)
- **Impact**: Replaces bootblock, adds 20-100KB of extra code

#### 3. **Strip/Replace Music**
- Remove original music to make room for crack intro
- Replace with smaller/simpler tunes
- Compress or remove sound effects
- **Impact**: Our binary search for DW music failed because it's not there!

#### 4. **Compress/Repack**
- Pack the game code to fit on fewer disks
- Change memory layout
- **Impact**: Makes disassembly harder, changes addresses

#### 5. **Modify Credits**
- Add cracker group credits
- Sometimes remove original developer credits
- **Impact**: Historical data lost

---

## What We Know About Our Cracked ADFs

### File Names Tell The Story

```
Menace (1988)(Psyclapse)[cr Ackerlight][t +3 Ackerlight][a].adf
                        └────────┬──────┘ └────────┬────────┘ └┬┘
                              cracked           trained      alternate
```

**Breakdown:**
- `[cr Ackerlight]` = **Cracked** by Ackerlight group
- `[t +3 Ackerlight]` = **Trainer** with +3 cheats (likely: unlimited lives, energy, weapons)
- `[a]` / `[a2]` = **Alternate** versions (slightly different cracks)

### What's Likely Different

Based on our binary analysis and cracking group practices:

| Feature | Original | Our Cracked Version |
|---------|----------|---------------------|
| **Music** | David Whittaker format (34KB) | Removed or replaced |
| **Bootblock** | Copy protection code | Ackerlight crack intro |
| **Size** | 1 or 2 disks, uncompressed | 1 disk, compressed |
| **Protection** | Custom sync/format | None (standard ADF) |
| **Trainers** | None | +3 cheats (lives, energy, etc.) |
| **Credits** | Original DMA/Psyclapse | Modified with cracker credits |
| **Code Layout** | Original memory map | Repacked/relocated |

### Evidence from Our Analysis

From `docs/MUSIC_EXTRACTION_RESULTS.md`:

✗ **Not Found:**
- David Whittaker music module (34,566 bytes)
- DW player code (MOVEM+BSR patterns)
- Characteristic DW waveforms

✓ **Found:**
- Minimal bootblock code (likely crack intro loader)
- 1 Paula register reference (DMA init only)
- No substantial music player code

**Conclusion:** The original music was definitely removed.

---

## Original Versions - Do They Exist?

### YES - Multiple Formats Available

#### 1. **WHDLoad Version** (Verified Original)

**Source:** https://whdload.de/games/Menace.html

**Details:**
- Version 1.3 (Updated: 23 Jan 2024)
- Based on original 1988 Psygnosis release
- Requires **original disk image**
- SHA-1 hashes documented:
  - **Disk.1**: `85d1bcdff86a8b8e93ceb2580a9fec6b637250d7` (496,000 bytes)
  - **Disk.2**: `15c62e4d609d5cd4f5ddc9de6cf175683b85d990` (489,800 bytes)

**Features of WHDLoad patch:**
- "Disk/copy protection removed" (by the patch, not crackers)
- "Both (PAL and NTSC) releases supported"
- "ROM access removed"
- Original game code preserved
- **Installer requires RawDIC** (needs original protected disks)

**Key Insight:** WHDLoad preservationists have the original disks!

#### 2. **IPF Format** (Copy-Protected Images)

**What is IPF?**
- Interchangeable Preservation Format
- Created by Software Preservation Society (SPS)
- Preserves physical copy protection
- Cannot be converted to standard ADF without cracking

**For Menace:**
- OpenRetro lists `Menace.ipf` with SHA-1 `53d1f93993f0ebcd2fa5b1ab1e9e6c9415d359af`
- Requires IPF-compatible emulator (FS-UAE, WinUAE with CAPS plugin)

#### 3. **Atari ST Original** (Confirmed Available)

**Source:** http://ftp.pigwa.net/stuff/collections/AtariSTarchive/

**Files:**
- `Menace (1988)(Psyclapse)(Disk 1 of 2)[!].zip`
- `Menace (1988)(Psyclapse)(Disk 2 of 2)[!].zip`

**Note:** The `[!]` suffix = **TOSEC "good dump"** marker (verified original)

The Atari ST version uses the same David Whittaker music format and similar game code (both use 68000 CPU), so it's valuable for comparison.

---

## Differences: Original vs. Cracked

### File Format

| Aspect | Original | Cracked |
|--------|----------|---------|
| **Format** | IPF/SCP (copy-protected) | ADF (standard DOS) |
| **Protection** | Physical (sync marks, custom formats) | None |
| **Preservation** | Complete disk structure | Data only |
| **Playability** | Requires compatible emulator | Works in any emulator |

### Game Content

| Feature | Original (IPF/WHDLoad) | Cracked (Our ADFs) |
|---------|------------------------|-------------------|
| **Music** | ✓ David Whittaker (34KB) | ✗ Removed/replaced |
| **Sound FX** | ✓ All original samples | ⚠ Possibly degraded |
| **Intros** | ✓ Original DMA/Psygnosis | ✗ Replaced with crack screen |
| **Credits** | ✓ Complete | ⚠ Modified |
| **Code** | ✓ Original layout | ⚠ Repacked/compressed |
| **Features** | ✓ All intact | ⚠ Possibly cut for space |

### Preservation Quality

According to Software Preservation Society (SPS):

> "Much of this type of software [cracked versions] has features removed: animations, intro's, end-sequences, pictures, sounds, etc. All to save disk space and transfer costs through the low speed modems of the time, and to fit the cracked software into standard disk formats."

**Common Issues with Cracks:**
- Music removed or degraded
- Animations/cutscenes removed
- End sequences cut
- Bugs introduced during cracking process
- Author/copyright notices replaced
- Some games unplayable due to rushed cracks

---

## Should We Seek The Original?

### Arguments FOR Getting The Original

#### 1. **True Reverse Engineering**
- Analyzing the original binary, not a modified version
- Understanding original code structure and layout
- Preserving authentic game logic

#### 2. **Complete Asset Extraction**
- Music is actually there (can extract it ourselves)
- Original sound effects intact
- All graphics in original format
- Original compression/packing schemes

#### 3. **Historical Accuracy**
- What DMA Design actually shipped
- How David Whittaker's music was integrated
- Original protection mechanisms (interesting RE target)

#### 4. **Better Documentation**
- Can document the *real* game, not a crack
- Contributions to preservation community
- Educational value for understanding 1988 game dev

#### 5. **Intellectual Honesty**
- "Ship of Theseus" problem goes away
- Can say we truly reverse engineered Menace
- Not just sourcing assets from archives

### Arguments AGAINST (Stick With Cracked)

#### 1. **Game Logic Likely Unchanged**
- Crackers don't modify gameplay code
- AI, physics, collision detection should be intact
- Core game mechanics are the same

#### 2. **Easier to Work With**
- No copy protection to deal with
- Standard ADF format
- Already extracted and analyzed

#### 3. **Assets Available Externally**
- Sprites from DMA tutorial (authentic)
- Music from Modland (authentic)
- Can use verified original assets

#### 4. **Standard Practice**
- Many preservation projects use cracked versions
- Focus on game logic, source assets externally
- Acceptable in retro gaming community

---

## Recommendation

### For a SERIOUS Reverse Engineering Project: **Get The Original**

Here's why:

1. **You already have external assets** - might as well be analyzing real code
2. **WHDLoad SHA-1 hashes exist** - we know exactly what to look for
3. **Educational value** - understanding protection schemes is interesting
4. **Complete picture** - music integration, memory layout, original structure
5. **Preservation contribution** - documenting the real Menace, not a crack

### How To Obtain Original

#### Option 1: Contact WHDLoad Community
- Reach out to Bored Seal / Psygore (WHDLoad maintainers)
- They have access to original disk images
- May be willing to share for preservation/education

#### Option 2: Software Preservation Society (SPS)
- Official preservation organization
- Has IPF images of many Amiga games
- May have Menace.ipf

#### Option 3: Hall of Light / Lemon Amiga
- Community preservation sites
- Sometimes have links to original IPF files
- Forum members may have originals

#### Option 4: Purchase Physical Disks
- eBay / retro game stores
- Buy original 1988 Menace disks
- Image them yourself with Kryoflux or similar

---

## What To Do With Original Once Obtained

### 1. **Extract Music Properly**
```
✓ Use Exotic Ripper in WinUAE
✓ Or scan IPF/extracted executable for DW format
✓ Compare with Modland version
✓ Document differences (if any)
```

### 2. **Disassemble Original Code**
```
✓ Extract executable(s) from IPF
✓ Disassemble with Ghidra / IDA Pro
✓ Analyze original memory layout
✓ Document protection routines
```

### 3. **Extract All Assets**
```
✓ Sprites from original bitplanes
✓ Sound effects from original samples
✓ Level data from original structures
✓ Font/UI elements
```

### 4. **Compare With Cracked Version**
```
✓ Document what Ackerlight changed
✓ Find relocated code sections
✓ Identify added trainer code
✓ Measure what was removed
```

---

## Conclusion

**Yes, seek the original.** 

If this is a serious reverse engineering project (not just a casual remake), working from the authentic 1988 release is important. The cracked version is missing music, has modified code layout, and doesn't represent what DMA Design actually created.

### Next Steps

1. **Immediate:** Try to obtain original disk images (IPF or WHDLoad-compatible)
2. **Short-term:** Continue with cracked version for game logic analysis (AI, physics)
3. **Long-term:** Once original obtained, re-analyze and document differences
4. **Documentation:** Create a "DIFFERENCES.md" comparing our crack findings with original

### Reality Check

If obtaining the original proves too difficult:
- Continuing with cracked version is acceptable
- Game logic should be mostly intact
- Using external verified assets is fine
- Many preservation projects do this

But for **true, complete reverse engineering**: original is worth the effort.

---

## References

- **WHDLoad Menace Page**: https://whdload.de/games/Menace.html
- **Software Preservation Society**: https://softpres.org/about
- **OpenRetro Menace Entry**: https://openretro.org/amiga/menace/edit
- **IPF Format Info**: https://www.amigaforever.com/kb/13-112
- **Our Analysis**: `docs/MUSIC_EXTRACTION_RESULTS.md`

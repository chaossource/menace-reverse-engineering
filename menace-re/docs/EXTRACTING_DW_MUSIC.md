# Extracting David Whittaker Music from Menace ADF

## Overview

David Whittaker (DW) music is **not a standard data format** — it's a **self-contained 68000 binary** containing both:
- The player/replayer code (68000 assembly)
- Embedded music data (samples, patterns, sequences)
- No magic header or standard structure

This makes extraction more complex than standard MOD files, but there are documented approaches.

---

## Method 1: Classic Amiga Approach (Exotic Ripper)

**Tools needed:**
- WinUAE (Amiga emulator)
- Exotic Ripper v2.32 or v3.3 (supports 82+ music formats including DW)
- Blank ADF disk image
- ADF Opus (to transfer files from ADF to PC)

### Step-by-Step Process

1. **Launch Menace in WinUAE**
   ```
   - Insert Menace disk 1 in DF0:
   - Boot and wait for the music to start playing
   ```

2. **Warm Reset to Preserve Memory**
   ```
   - Press F12 (WinUAE settings)
   - Swap DF0: to Exotic Ripper disk
   - Click "Reset" while holding BOTH mouse buttons
   - This enters the boot menu without clearing RAM
   ```

3. **Boot Without Startup-Sequence**
   ```
   - Select "Boot with No Startup-sequence"
   - This prevents loadwb from overwriting music data in RAM
   ```

4. **Run Exotic Ripper**
   ```
   CLI> exoticripper
   or
   CLI> exoticripper.020
   ```

5. **Hunt for Music**
   ```
   - Press 'h' to start hunting
   - Exotic Ripper will scan memory for known music formats
   - It recognizes: "DW" (new David Whittaker) and "DW old"
   ```

6. **Save When Found**
   ```
   - When it finds DW music, it will pause
   - Press 'w' to write/save
   - Specify output path (e.g., RAM:menace.dw)
   - Press 'c' to continue hunting for more music
   ```

7. **Transfer to PC**
   ```
   - Insert blank ADF in DF1:
   - Copy: COPY RAM:menace.dw TO DF1:
   - Exit WinUAE
   - Use ADF Opus to extract the .dw file from the ADF to PC
   ```

### Important Notes

- Exotic Ripper can detect DW format but size calculation is "hard"
- Standard DW modules require **64 zero bytes at the end**
- Some damaged rips may be unplayable
- Not all music will be found (some may use different formats)

---

## Method 2: Modern Binary Analysis (xmrs Library)

**Tools:**
- Rust toolchain with `xmrs` crate
- Python with `amitools` for ADF extraction

### How xmrs Detects DW Format

The `xmrs` library (Rust) can structurally detect DW files:

```rust
use xmrs::prelude::*;

let bytes = std::fs::read("extracted_executable")?;

// xmrs detects DW by:
// 1. Scanning first few KB for "characteristic opcode quadruple"
// 2. Walking the call graph from that signature
// 3. Reading the replayer's init-time constants
// 4. Parsing the data tables they point to

let module = Module::load_dw(&bytes)?;
```

### Detection Strategy

The DW format has no magic header, so detection relies on:

1. **Opcode Signature Scanning**
   - Look for characteristic 68000 instruction patterns
   - The player uses specific init/play/stop entry points
   - Entry points: `JSR MUSICBASE`, `JSR MUSICBASE+$0E`, `JSR MUSICBASE+$1C`

2. **Player Code Structure**
   - PC-relative replayer code at the start
   - Sample data embedded after the player
   - Pattern sequences and per-voice data tables
   - Specific waveform patterns: `...3f3fc0c0...` (square waves)

3. **End Marker**
   - Many DW modules end with 64 zero bytes
   - But this is not universal

### Extraction Process

1. **Extract game executable from ADF**
   ```bash
   # Use amitools to mount and extract
   xdftool Menace_Disk1.adf read MENACE > menace_executable
   ```

2. **Scan for DW player code**
   ```python
   # Look for characteristic 68000 opcodes
   # Search for player entry points
   # Identify the start of the music module
   ```

3. **Determine module size**
   - This is the "hard part" according to Exotic Ripper docs
   - Follow the player's init constants to find data table pointers
   - Calculate total size including samples and patterns

4. **Extract the complete module**
   ```python
   # Extract from start_offset to end_offset
   with open('menace.dw', 'wb') as f:
       f.write(binary_data[start:end])
   ```

---

## Method 3: Manual Binary Search (Advanced)

### For Atari ST (similar to Amiga)

According to musicrip documentation:

```
Start signature: 48E7FFFE6100  (MOVEM.L A0-A6/D0-D7,-(A7); BSR ...)
End marker:      4E71           (NOP)
```

Search the binary for these patterns and extract the inclusive range.

### For Amiga 68000

Similar approach but signatures may differ:
- Look for characteristic MOVEM.L patterns
- Follow BSR/JSR branches to find player routines
- Identify sample data by looking for 8-bit PCM patterns

---

## Method 4: Compare with Known Good Rip

Since we have the authentic `menace.dw` from Modland:
- **Size**: 34,566 bytes
- **CRC32**: `1CC0AACA`

We could:

1. **Scan our ADF files for this exact byte sequence**
   ```bash
   # Extract all files from ADF
   # Search for the 34,566 byte DW module
   grep -abo "$(hexdump -ve '1/1 "%.2x"' menace.dw)" menace_disk1.raw
   ```

2. **Use it as a reference signature**
   - Compare our extracted data with the known good version
   - Validate our extraction is correct

---

## Practical Recommendation

For this project, I recommend:

### **Option A: Use Exotic Ripper in WinUAE** (Most Authentic)
- Historically accurate method
- Guaranteed to find DW music if it's in memory
- Requires emulator setup but well-documented

### **Option B: Write a Python Scanner**
- Scan the extracted ADF contents for the known good file
- Search for characteristic DW signatures
- Less historically accurate but programmatic

### **Option C: Use Modern Tools**
- Build a small Rust tool using `xmrs` crate
- Scan the game executable for DW format
- Most modern approach

---

## References

- **Exotic Ripper Documentation**: https://files.scene.org/view/mirrors/scenesp.org/compilations/modplanet/normal/cd2/utils/others/amiga/ExoticRipper/
- **xmrs Rust Library**: https://docs.rs/xmrs/latest/xmrs/
- **DW Format Wiki**: https://vgmpf.com/Wiki/index.php?title=DW
- **Amiga Music Ripping Guide**: https://www.lemonamiga.com/forum/viewtopic.php?t=2617
- **David Whittaker Player Analysis**: https://m64.io/chiptune-wiki/wiki/whittaker-player

---

## Would You Like Me To Try This?

I can attempt to:

1. **Use Exotic Ripper in WinUAE** to extract the music from our Menace ADF files
2. **Write a Python script** to scan the ADF for DW format signatures
3. **Compare the Modland version** with data in our ADF files to locate it

This would be **genuine reverse engineering** — extracting the music from the binary ourselves rather than downloading it.

# Music Conversion Notes

## David Whittaker Format (.dw) - menace.dw

**Status**: ❌ Cannot be rendered with standard tools

### Why Conversion Failed

The original `menace.dw` file (David Whittaker custom format) is a **self-contained 68000 binary** with embedded player code and music data. Standard tracker converters don't recognize it:

**What was tried**:
- ✗ `openmpt123` - "error loading file" (only supports MOD, XM, S3M, IT, MPTM, etc.)
- ✗ `UADE` (Unix Amiga Delitracker Emulator) - Not available in Ubuntu 24.04 repos
- ✗ Building UADE from source - Requires libbencode-tools and complex dependency chain

### Solution Options

**Option 1: Use UADE on Windows/Linux** (if you have it):
```bash
uade123 -e wav -f menace.wav ../music/menace.dw
oggenc menace.wav -o music/menace.ogg
```

**Option 2: Use the web-based converter**:
- Upload menace.dw to an Amiga music conversion service
- Export as WAV or OGG
- Copy result to `menace-re/godot/music/`

**Option 3: Extract from gameplay**:
- Run Menace in WinUAE Amiga emulator
- Use audio recording software to capture the music
- Export as WAV, convert to OGG

Once you have `menace.ogg`, place it in `menace-re/godot/music/` and add it to the MusicPlayer node in Godot.

## MOD File Conversion (.mod) - WORKS

Standard .mod files CAN be converted using openmpt123:

```bash
# Convert a .mod file to OGG:
./convert_mod_to_ogg.sh music/incoming/yourfile.mod
```

This will output: `godot/music/yourfile.ogg`

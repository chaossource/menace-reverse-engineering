# Music Conversion Notes

## David Whittaker Format (.dw) - menace.dw

**Status**: ✅ Successfully rendered with UADE

### Multi-Subsong Format

The `menace.dw` file contains **all 3 music tracks** from the original game packaged in a single file:

- **Subsong 0** (4m:27.922s): Main/Title theme → `menace_sub0.ogg`
- **Subsong 1** (3m:20.860s): In-game music → `menace_sub1.ogg`
- **Subsong 2** (2m:31.908s): Boss battle/Game Over theme → `menace_sub2.ogg`

All three tracks have been extracted and converted to OGG format in `godot/music/`.

### How It Was Converted

The David Whittaker format is an unheadered 68000 assembly music driver binary, not a standard module format. Godot 4.7.2 cannot play it natively.

**Solution**: Built and used [UADE (Unix Amiga Delitracker Emulator)](https://zakalwe.fi/uade/) v3.05 from source, which accurately emulates the Paula sound hardware and executes the 68000 music driver.

```bash
# Extract each subsong:
uade123 -s 0 -e wav -f menace_sub0.wav ../music/menace.dw
oggenc -q 6 -o music/menace_sub0.ogg menace_sub0.wav

uade123 -s 1 -e wav -f menace_sub1.wav ../music/menace.dw
oggenc -q 6 -o music/menace_sub1.ogg menace_sub1.wav

uade123 -s 2 -e wav -f menace_sub2.wav ../music/menace.dw
oggenc -q 6 -o music/menace_sub2.ogg menace_sub2.wav
```

Or use the conversion script: `./convert_mod_to_ogg.sh ../music/menace.dw 0` (subsong number)

## MOD File Conversion (.mod)

Standard .mod files can be converted using OpenMPT:

```bash
# Convert a .mod file to OGG:
./convert_mod_to_ogg.sh music/incoming/yourfile.mod
```

This will output: `godot/music/yourfile.ogg`

### Drop Folder for Future Tracks

Place additional `.mod` files in `music/incoming/` and convert them using the script.

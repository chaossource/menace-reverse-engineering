# Menace - Reverse Engineering & Modern Port

A project to reverse engineer the classic 1988 Amiga game **Menace** and port it to modern x86 hardware.

## Project Overview

**Menace** was a pioneering vertical-scrolling shoot-em-up developed by DMA Design (David Jones, who later created Lemmings and Grand Theft Auto) and published by Psygnosis in 1988 for the Amiga.

This project aims to:
1. Reverse engineer the original Amiga binary
2. Extract game assets (graphics, audio, level data)
3. Document game mechanics and behavior
4. Create a native x86 port using modern C++ and SDL2

## Project Structure

```
menace-re/
├── docs/              # Documentation and analysis
│   └── ANALYSIS.md    # Detailed reverse engineering analysis
├── tools/             # Analysis and extraction tools
│   ├── adf_analyzer.py
│   ├── disassemble_game.py
│   └── extract_graphics.py
├── extracted/         # Original ADF files
├── extracted_gfx/     # Extracted graphics assets
├── disassembly/       # Disassembled 68000 code
└── src/               # Modern C++ port source code
```

## Status

### Completed ✓
- [x] ADF file analysis
- [x] Bootblock disassembly
- [x] Hardware register identification
- [x] Graphics extraction (456 images extracted)
- [x] Project documentation

### In Progress ⏳
- [ ] Code analysis and documentation
- [ ] Game mechanic reverse engineering
- [ ] Modern C++ framework setup

### TODO 📋
- [ ] Audio sample extraction
- [ ] Level data extraction
- [ ] Full game logic implementation
- [ ] SDL2 rendering implementation
- [ ] Input handling
- [ ] Testing and gameplay refinement

## Technical Details

### Original Platform (Amiga)
- **CPU**: Motorola 68000 @ ~7 MHz
- **Graphics**: OCS chipset (planar bitmaps, 320x256, up to 32 colors)
- **Audio**: Paula (4-channel 8-bit PCM)
- **Storage**: 880KB floppy disk (custom format, no filesystem)

### Target Platform (Modern x86)
- **CPU**: x86-64
- **Graphics**: SDL2 + OpenGL
- **Audio**: SDL2_mixer
- **OS**: Linux/Windows/macOS

### Key Challenges
- **Planar to Chunky**: Converting Amiga planar graphics to modern format
- **Hardware Access**: Emulating Amiga custom chip behavior in software
- **Reverse Engineering**: Understanding game logic from 68000 assembly
- **Timing**: Matching original game feel without cycle-accurate emulation

## Building

### Prerequisites
- C++17 compiler (GCC/Clang/MSVC)
- CMake 3.15+
- SDL2 development libraries
- SDL2_image
- SDL2_mixer

### Build Instructions
```bash
# Install dependencies (Ubuntu/Debian)
sudo apt-get install build-essential cmake libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev

# Build
mkdir build && cd build
cmake ..
make

# Run
./menace
```

## Analysis Tools

### ADF Analyzer
Analyzes the structure of Amiga ADF disk images:
```bash
python3 tools/adf_analyzer.py extracted/Menace*.adf
```

### Disassembler
Disassembles 68000 code sections:
```bash
python3 tools/disassemble_game.py extracted/Menace*.adf
```

### Graphics Extractor
Extracts and converts graphics from the ADF:
```bash
python3 tools/extract_graphics.py extracted/Menace*.adf extracted_gfx/
```

## Resources

- [Original Game Info](https://www.mobygames.com/game/261/menace/)
- [DMA Design History](https://en.wikipedia.org/wiki/DMA_Design)
- [Amiga Hardware Manual](http://amigadev.elowar.com/)
- [68000 Programmer's Manual](http://www.easy68k.com/paulrsm/doc/trick68k.htm)

## Legal Notice

**Menace** is copyrighted software owned by Psygnosis/Sony Computer Entertainment.

This project is for **educational and preservation purposes only**. We do not distribute the original ROM or game assets. To use this project, you must own a legal copy of the original game.

Reverse engineering is performed under fair use for interoperability and education purposes.

## Credits

- **Original Game**: DMA Design / Psygnosis (1988)
- **Reverse Engineering**: This project
- **Tools**: Python, GNU Binutils, SDL2

## License

The reverse engineering tools and modern port code in this repository are released under the MIT License. This does NOT include the original game assets, which remain copyrighted by their respective owners.

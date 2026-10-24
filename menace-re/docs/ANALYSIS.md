# Menace - Reverse Engineering Analysis

## Game Information
- **Title**: Menace
- **Year**: 1988
- **Developer**: DMA Design (David Jones)
- **Publisher**: Psygnosis
- **Platform**: Amiga (68000 CPU)
- **Type**: Vertical scrolling shoot-em-up

## Files Analyzed
We have 3 ADF (Amiga Disk Format) files:
- Main version
- Alternate version [a]
- Alternate version [a2]

All are cracked versions by "Ackerlight" with trainers (cheats).
Each file is 880KB (standard Amiga floppy disk size).

## Disk Structure

### Bootblock (Sector 0-1, 1024 bytes)
```
Offset: 0x000000
Size: 1024 bytes
Type: Executable + Boot Code
```

**Key Findings:**
- Starts with "DOS\0" signature
- Contains 68000 machine code
- "CHW!" marker (cracker signature)
- Writes to hardware register 0xDFF096 (DMACON - DMA Control)
- Jumps to 0x3FF00

**Disassembly highlights:**
```asm
0x002e: movew #-31872,0xdff096  ; DMACON - Configure DMA
0x0036: jmp 0x3ff00             ; Jump to main code/data
```

### Custom Disk Loader
The game uses a **custom disk loader**, NOT the standard AmigaDOS filesystem.
This means:
- No standard file structure
- Direct track/sector loading
- Code and data are packed sequentially
- Must be analyzed by offset, not by filename

### Memory Layout (Detected Sections)
Based on entropy analysis and data patterns:

| Offset | Size | Probable Type | Notes |
|--------|------|---------------|-------|
| 0x00000 | 1KB | Boot code | Executable |
| 0x01000 | ~32KB | Early loader/code | Mixed code/data |
| 0x08000 | ~8KB | Graphics | Medium entropy |
| 0x10000 | ~32KB | Main game code? | High variety |
| 0x20000+ | Variable | Graphics/Sprites | Planar bitmap data |
| 0x40000+ | Variable | More graphics | Extensive image data |
| 0x80000+ | Variable | Level data? | Structured data |

### Graphics Data
Amiga uses **planar bitmap format**:
- Each bitplane stored separately
- 4-5 bitplanes typical (16-32 colors)
- Common resolutions: 320x200, 320x256
- Sprites use similar format but smaller

Estimated ~60% of disk contains graphics data.

## Hardware Registers Accessed

The game directly manipulates Amiga custom chips:

### DMA Control (DMACON - $DFF096)
- Controls DMA channels for audio, blitter, copper, etc.
- Written during boot to take control from OS

### Likely Additional Registers (to be confirmed):
- **Blitter** ($DFF040-$DFF05E) - Fast bitmap operations
- **Copper** ($DFF080-$DFF08A) - Display list processor
- **Audio** ($DFF0A0-$DFF0D8) - 4 channel sound
- **Bitplanes** ($DFF100-$DFF10A) - Display configuration
- **Color Palette** ($DFF180-$DFF1BE) - Up to 32 colors
- **Joystick** ($DFF00A, $DFF00C) - Player input

## Code Architecture

### 68000 Assembly Patterns Found
Common instructions observed:
- `JSR` - Jump to subroutine (function calls)
- `JMP` - Absolute jump
- `MOVE.L/W/B` - Memory/register moves
- `BRA/BEQ/BGT/BLE` - Conditional branches
- Direct hardware register access

### Game Loop Structure (Hypothesis)
Based on typical Amiga game patterns:
1. Boot and initialization
2. Disable OS, take over hardware
3. Load graphics to chip RAM
4. Set up copper lists (display)
5. Main game loop:
   - Read joystick input
   - Update game state
   - Render sprites/backgrounds
   - Handle collisions
   - Update audio
6. Vertical blank interrupt handling

## Porting Strategy

### Option 1: Full Rewrite (Recommended)
**Approach**: Understand game logic, rewrite in modern C/C++

**Pros:**
- Clean, maintainable code
- Native x86 performance
- Easy to modify/extend
- Can use modern libraries (SDL2)

**Cons:**
- Time-intensive
- Need to understand all game mechanics
- Must recreate graphics/audio systems

**Steps:**
1. ✓ Extract and convert graphics assets
2. ✓ Disassemble and analyze code
3. Document game mechanics (enemies, weapons, scoring, levels)
4. Implement core game loop in C/C++
5. Implement rendering (SDL2 + OpenGL)
6. Implement audio
7. Implement game logic
8. Test and refine

### Option 2: Emulation Wrapper
**Approach**: Embed UAE (Unix Amiga Emulator) core

**Pros:**
- Faster to implement
- 100% accuracy
- Less reverse engineering needed

**Cons:**
- Emulation overhead
- Harder to modify game
- Still need Amiga ROM (legal issues)

### Option 3: Transpilation
**Approach**: Convert 68000 assembly to C/x86

**Pros:**
- Mechanically feasible
- Preserves exact behavior

**Cons:**
- Result is messy, unreadable code
- Still need to emulate Amiga hardware
- Not truly "native"

## Current Status

### Completed
- ✓ Downloaded and extracted ADF files
- ✓ Analyzed disk structure
- ✓ Created ADF analyzer tool
- ✓ Disassembled bootblock and key sections
- ✓ Identified hardware register usage
- ✓ Created graphics extraction tool
- ✓ Documented findings

### In Progress
- ⏳ Extracting graphics data
- ⏳ Analyzing game code structure

### TODO
- [ ] Complete code disassembly
- [ ] Document game mechanics
- [ ] Extract audio samples
- [ ] Create modern game framework
- [ ] Implement rendering
- [ ] Implement game logic
- [ ] Port to x86

## Technical Notes

### Amiga Hardware Overview
- **CPU**: Motorola 68000 @ 7.16 MHz (NTSC) / 7.09 MHz (PAL)
- **RAM**: 512KB chip RAM (shared with graphics) + expansion
- **Graphics**: OCS chipset (Blitter, Copper, Denise)
- **Audio**: Paula - 4 channel 8-bit PCM
- **Display**: Up to 320x256 with 32 colors (from 4096 palette)

### Key Differences from Modern Systems
- **Planar graphics** vs chunky (modern)
- **Copper** display lists vs GPU/frame buffers
- **Blitter** for fast bitmap operations vs modern GPU
- **Custom chips** vs software rendering
- **Direct hardware access** vs OS abstractions

### Resources
- [Amiga Hardware Reference Manual](http://amigadev.elowar.com/)
- [UAE - Unix Amiga Emulator](https://github.com/FrodeSolheim/fs-uae)
- [68000 Instruction Set](http://www.easy68k.com/paulrsm/doc/trick68k.htm)
- [Menace on Wikipedia](https://en.wikipedia.org/wiki/Menace_(video_game))

## Legal Considerations

**Important**: Menace is copyrighted software owned by Psygnosis/Sony.

- Reverse engineering for interoperability = Generally legal
- Reverse engineering for learning = Educational fair use
- Distributing ROM/ADF files = Copyright infringement
- Distributing recreated game = Potential infringement
- Clean room implementation = Safer legally

**Recommendation**: This project is for educational/preservation purposes. Do not distribute the original ADF files or ROM data.

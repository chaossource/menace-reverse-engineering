# Menace - Godot 4.7.2 Remake

A reverse-engineered remake of the 1988 Amiga shoot 'em up game Menace, built with Godot 4.7.2.

## Getting Started (Windows 10)

### 1. Install Godot 4.7.2

1. Download **Godot 4.7.2 (Standard)** from: https://godotengine.org/download/windows/
   - Get the "Standard" version (not .NET/Mono unless you need C# support)
2. Extract the ZIP file
3. Run `Godot_v4.7.2-stable_win64.exe`

### 2. Open the Project

1. In Godot, click **"Import"**
2. Navigate to your checkout: `<path>\menace-reverse-engineering\menace-re\godot\`
3. Select `project.godot`
4. Click **"Import & Edit"**

The project will open in the Godot editor.

### 3. Run the Game

- Press **F5** or click the "Play" button (▶) in the top-right corner
- Controls:
  - **WASD** or **Arrow Keys**: Move
  - **Space**: Shoot

## Music

### Authentic 1988 Soundtrack (Already Included)

The project includes **all 3 original David Whittaker tracks** from the 1988 Amiga release:

- **menace_sub0.ogg** (4m:27s) - Main/Title theme ← *Currently playing in-game*
- **menace_sub1.ogg** (3m:20s) - In-game music
- **menace_sub2.ogg** (2m:31s) - Boss battle/Game Over theme

All tracks are located in `music/` and ready to use. The main scene plays the title theme by default.

### Switching Music Tracks

In Godot editor:
1. Open `scenes/main.tscn`
2. Select the `MusicPlayer` node
3. In the Inspector, drag a different `.ogg` file from `music/` to the **Stream** property
4. Save the scene

### Adding Custom .mod Files

1. Place your `.mod` tracker files in: `menace-re\godot\music\incoming\`

2. Open WSL (Windows Subsystem for Linux) or Git Bash

3. Navigate to the project:
   ```bash
   cd /path/to/menace-reverse-engineering/menace-re/godot
   ```

4. Run the conversion script:
   ```bash
   ./convert_mod_to_ogg.sh music/incoming/yourfile.mod
   ```

5. The converted `.ogg` file will appear in `music/`

**Technical Details**: See `MUSIC_CONVERSION_NOTE.md` for information about the David Whittaker format and multi-subsong extraction.

## Project Structure

```
godot/
├── project.godot           # Godot project file
├── scenes/                 # Game scenes
│   ├── main.tscn          # Main game level
│   ├── player.tscn        # Player ship
│   ├── bullet.tscn        # Bullet projectile
│   └── enemy.tscn         # Enemy ship
├── scripts/                # GDScript files
│   ├── main.gd            # Level logic
│   ├── player.gd          # Player controller
│   ├── bullet.gd          # Bullet behavior
│   └── enemy.gd           # Enemy AI
├── sprites/level1/         # Retail level 1 ship and alien frames
├── music/                  # Music files (.ogg)
│   └── incoming/          # Drop .mod files here for conversion
├── convert_mod_to_ogg.sh  # Music conversion script (Linux/WSL)
└── README.md              # This file
```

## Controls

- **W / Up Arrow**: Move Up
- **S / Down Arrow**: Move Down
- **A / Left Arrow**: Move Left
- **D / Right Arrow**: Move Right
- **Space / Enter**: Shoot

## Development Notes

This is a work-in-progress remake. Current features:
- ✅ Player movement and shooting
- ✅ Enemy spawning
- ✅ Scrolling background
- ✅ Music playback (.ogg format)
- ✅ Level 1 ship (`ship-w0-level.png`) and animated level 1 aliens (`enemy-l0-*.png`)
- ⏳ Enemy AI patterns
- ⏳ Boss fights
- ⏳ Level data
- ⏳ Power-ups

## Reverse Engineering Source

This project is part of the reverse engineering effort documented in the parent repository. See `../docs/` for technical analysis of the original game.

## License

This remake is for educational and preservation purposes. The original Menace (1988) was created by DMA Design and published by Psyclapse/Psygnosis.

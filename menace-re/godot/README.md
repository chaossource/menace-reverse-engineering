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

## Adding Music

### Option 1: Convert .mod Files (Recommended)

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

6. In Godot editor:
   - Open `scenes/main.tscn`
   - Select the `MusicPlayer` node
   - In the Inspector, drag your `.ogg` file to the **Stream** property
   - Save the scene

### Option 2: Convert menace.dw (Original Soundtrack)

The original David Whittaker soundtrack (`music/menace.dw`) requires **UADE** to convert.

**On Windows:**
1. Download UADE for Windows (if available) or use WSL with UADE installed
2. Convert:
   ```bash
   uade123 -e wav -f menace.wav ../music/menace.dw
   oggenc menace.wav -o music/menace.ogg
   ```
3. Add `menace.ogg` to the `MusicPlayer` as described above

**Note**: See `MUSIC_CONVERSION_NOTE.md` for technical details.

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
- ⏳ Sprites (using placeholders - real sprites coming soon)
- ⏳ Enemy AI patterns
- ⏳ Boss fights
- ⏳ Level data
- ⏳ Power-ups

## Reverse Engineering Source

This project is part of the reverse engineering effort documented in the parent repository. See `../docs/` for technical analysis of the original game.

## License

This remake is for educational and preservation purposes. The original Menace (1988) was created by DMA Design and published by Psyclapse/Psygnosis.

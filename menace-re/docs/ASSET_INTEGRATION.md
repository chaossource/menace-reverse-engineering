# Asset Integration Guide

## 🎯 Overview

We've successfully extracted game assets from the Menace ROM:
- **11,247 potential sprite images** (16x16 to 64x64 pixels)
- **100 potential audio samples** (8-bit PCM WAV files)

Many of these are false positives (data that looks like sprites/audio but isn't), but the **real game assets are in there**!

---

## 📁 What You Have

### Sprites Directory: `menace-re/sprites/`
```
sprite_16x16x4_OFFSET.png    - Small 16-color sprites
sprite_32x32x4_OFFSET.png    - Medium 16-color sprites
sprite_32x32x5_OFFSET.png    - Medium 32-color sprites
sprite_48x48x4_OFFSET.png    - Large 16-color sprites
sprite_64x64x4_OFFSET.png    - Extra large sprites
```

**Naming convention:** `sprite_{WIDTH}x{HEIGHT}x{BITPLANES}_{OFFSET}.png`
- Width/Height: Pixel dimensions
- Bitplanes: Color depth (4=16 colors, 5=32 colors)
- Offset: Location in ROM (hex)

### Audio Directory: `menace-re/audio/`
```
audio_OFFSET_LENGTH_RATE.wav
```

**Example:** `audio_000800_1000_8000hz.wav`
- Extracted from offset 0x000800
- 1000 bytes long
- 8000 Hz sample rate

---

## 🔍 Step 1: Browse the Assets

### View Sprites in Browser
```bash
cd menace-re

# Create HTML viewer for sprites
python3 tools/sprite_viewer.py sprites/ --html

# Open in browser
xdg-open sprites/sprite_preview.html  # Linux
# or open sprites/sprite_preview.html # macOS
# or start sprites/sprite_preview.html # Windows
```

This shows all sprites organized by size. Look for:
- **Player ship**: Sleek spaceship, likely 16x16 or 32x32
- **Enemies**: Organic/biological creatures (Menace had bio-mechanical enemies)
- **Bullets**: Small projectile shapes
- **Powerups**: Icons or collectible items

### Listen to Audio Samples
```bash
cd menace-re/audio

# Play all samples (Linux with sox)
for f in *.wav; do 
    echo "Playing: $f"
    play $f 2>/dev/null
    sleep 0.5
done

# Or with aplay (alternative)
for f in *.wav; do 
    echo "Playing: $f"
    aplay $f 2>/dev/null
    sleep 0.5
done
```

Identify:
- **Shoot sound**: Sharp, short blast
- **Explosion**: Boom/crash sound
- **Enemy hit**: Impact sound
- **Powerup**: Positive chime/beep
- **Music**: Longer samples or melodic content

---

## 🎮 Step 2: Identify Key Assets

### Finding the Player Ship

Look through 16x16 and 32x32 sprites for a spaceship shape. 

**Tips:**
- Player ship is typically **centered and symmetrical**
- Should have a **clear front/back** (vertical shooter)
- Usually one of the **more detailed sprites**
- Check offsets around **0x40000-0x80000** (common game data area)

### Finding Enemies

Menace enemies are **organic/biological** with a distinctive art style:
- Spiky, creature-like shapes
- Multiple animation frames (look for similar sprites)
- Various sizes (small enemies, medium enemies, bosses)

### Finding Bullets

- **Small sprites** (4x4, 8x8, maybe 16x16)
- **Simple shapes** (dots, lines, projectiles)
- Often **bright colors** (yellow, white, cyan)

---

## 🔧 Step 3: Integrate Into Game

Once you've identified a sprite (let's say player ship at `sprite_32x32x4_004000.png`):

### A. Copy to Assets Directory

```bash
cd menace-re

# Create assets structure
mkdir -p assets/sprites
mkdir -p assets/audio

# Copy identified sprites with meaningful names
cp sprites/sprite_32x32x4_004000.png assets/sprites/player_ship.png
cp sprites/sprite_32x32x4_005000.png assets/sprites/enemy1.png
cp sprites/sprite_16x16x4_006000.png assets/sprites/bullet.png

# Copy identified audio
cp audio/audio_010000_2000_8000hz.wav assets/audio/shoot.wav
cp audio/audio_012000_5000_8000hz.wav assets/audio/explosion.wav
```

### B. Load in Game Code

Edit `src/game.cpp`:

```cpp
void Game::loadAssets() {
    std::cout << "Loading assets..." << std::endl;
    
    // Load player ship
    if (!renderer_->loadTexture("player", "assets/sprites/player_ship.png")) {
        std::cerr << "Warning: Failed to load player sprite" << std::endl;
    }
    
    // Load enemy
    if (!renderer_->loadTexture("enemy1", "assets/sprites/enemy1.png")) {
        std::cerr << "Warning: Failed to load enemy sprite" << std::endl;
    }
    
    // Load bullet
    if (!renderer_->loadTexture("bullet", "assets/sprites/bullet.png")) {
        std::cerr << "Warning: Failed to load bullet sprite" << std::endl;
    }
    
    // Load audio
    audio_->loadSound("shoot", "assets/audio/shoot.wav");
    audio_->loadSound("explosion", "assets/audio/explosion.wav");
    
    std::cout << "Assets loaded!" << std::endl;
}
```

### C. Use in Rendering

Edit the `render()` function in `src/game.cpp`:

```cpp
void Game::render() {
    // Clear screen
    renderer_->clear(Color(0, 0, 32));  // Dark blue
    
    // Draw player (use texture instead of rectangle)
    Rect playerRect = player_->getBounds();
    renderer_->drawTexture("player", playerRect);
    
    // Draw enemies
    for (const auto& enemy : enemies_) {
        if (enemy->isActive()) {
            Rect enemyRect = enemy->getBounds();
            renderer_->drawTexture("enemy1", enemyRect);
        }
    }
    
    // Draw bullets
    for (const auto& bullet : bullets_) {
        if (bullet->isActive()) {
            Rect bulletRect = bullet->getBounds();
            renderer_->drawTexture("bullet", bulletRect);
        }
    }
    
    renderer_->present();
}
```

### D. Play Audio

In `src/game.cpp`, when firing:

```cpp
void Game::updatePlayer(float deltaTime) {
    // ... existing code ...
    
    if (state.fire && fireTimer >= 0.15f) {
        auto bullet = std::make_unique<Sprite>();
        bullet->setType(EntityType::BULLET);
        bullet->setPosition(Vec2(player_->getPosition().x + 6, player_->getPosition().y - 8));
        bullet->setSize(4, 8);
        bullet->setVelocity(Vec2(0, -300));
        bullets_.push_back(std::move(bullet));
        
        // Play shoot sound
        audio_->playSound("shoot");
        
        fireTimer = 0.0f;
    }
}
```

When enemy is hit:

```cpp
void Game::checkCollisions() {
    // ... existing bullet vs enemy code ...
    
    if (bulletBounds.intersects(enemyBounds)) {
        bullet->setActive(false);
        enemy->setActive(false);
        score_ += 10;
        
        // Play explosion sound
        audio_->playSound("explosion");
        
        break;
    }
}
```

---

## 🏗️ Step 4: Rebuild and Test

```bash
cd menace-re

# Rebuild
./build.sh

# Run
./build/menace
```

You should now see actual game graphics instead of colored rectangles!

---

## 📝 Tips for Finding Sprites

### Search by Size
Different sprite sizes have different purposes:

| Size | Likely Content |
|------|---------------|
| 16x16 | Small enemies, bullets, powerup icons |
| 32x32 | Player ship, medium enemies, effects |
| 48x48 | Large enemies, mini-bosses |
| 64x64 | Boss enemies, large effects |

### Look for Patterns
- **Animation frames**: Similar sprites at sequential offsets
- **Variations**: Same sprite with different colors = different states
- **Empty space**: Sprites often have transparent/black borders

### Compare with Screenshots
Search online for "Menace Amiga screenshots" to see what sprites should look like!

### Check Multiple Bitplane Versions
The same offset might be extracted as both 4-bitplane (16 color) and 5-bitplane (32 color). Try both to see which looks better!

---

## 🎨 Advanced: Custom Palettes

If sprites look wrong (bad colors), you might need the correct Amiga palette.

The Amiga Copper chip sets custom color palettes. To find the real palette:

1. Look in the disassembly for writes to COLOR00-COLOR31 registers
2. Copper list data contains palette information
3. Try extracting with different default palettes

Example palette extraction (for advanced users):
```python
# In extract_sprites.py, modify AMIGA_PALETTE_16
# Look for patterns like:
# 0x180: COLOR00 (background)
# 0x182: COLOR01
# etc. in disassembly
```

---

## 🎵 Audio Integration Checklist

- [ ] Find shoot sound effect
- [ ] Find explosion sound effect
- [ ] Find enemy death sound
- [ ] Find player death sound
- [ ] Find powerup collection sound
- [ ] Find background music (if any MOD files found)
- [ ] Adjust sample rates if sounds are too fast/slow

---

## 🐛 Troubleshooting

### Sprites look garbled
- Try different bitplane versions (x4 vs x5)
- The offset might be wrong (sprite data could be interleaved)
- Check if transparency is needed (black color = transparent?)

### Audio sounds wrong
- Try different sample rates: 8000, 11025, 16000 Hz
- Sample might be compressed or use special Amiga format
- Could be false positive (not actually audio)

### Can't find specific sprite
- Sprite might use custom format or compression
- Try looking at extracted full-screen images (extracted_gfx/)
- Sprite might be built from smaller tiles

### No real sprites found
If most sprites are garbage:
1. The game might use custom compression
2. Sprites might be stored in a different format
3. Try adjusting heuristics in `extract_sprites.py`
4. Check if sprites are in different part of disk (beyond scanned area)

---

## 📚 Next Steps

Once you have a few key sprites working:

1. **Create sprite sheet** - Combine multiple frames for animation
2. **Implement animation** - Switch frames for movement/rotation
3. **Add more enemies** - Each with unique sprites
4. **Background tiles** - Create scrolling background
5. **UI elements** - Score display, lives indicator, etc.

---

## 🎯 Quick Start Checklist

- [ ] Open `sprites/sprite_preview.html` in browser
- [ ] Identify player ship sprite
- [ ] Identify at least one enemy sprite
- [ ] Identify bullet sprite
- [ ] Copy identified sprites to `assets/sprites/` with meaningful names
- [ ] Listen to audio samples
- [ ] Identify shoot and explosion sounds
- [ ] Copy identified sounds to `assets/audio/`
- [ ] Edit `game.cpp` to load textures
- [ ] Edit `game.cpp` to use textures in render()
- [ ] Edit `game.cpp` to play sounds
- [ ] Rebuild with `./build.sh`
- [ ] Test the game!

---

**Good luck! Once you have the core sprites working, the rest is just iteration!** 🚀

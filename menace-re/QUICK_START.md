# 🚀 Quick Start - Identified Sprites

Your Menace sprites have been identified! Here's what to do:

## Step 1: Pull Latest Code

```bash
cd menace-reverse-engineering
git pull origin main
```

## Step 2: View Identified Sprites

Open the **definitive shortlist**:

```bash
# Read the identification report
cat IDENTIFIED_SPRITES.md

# View the top player ship in Windows
explorer.exe best_sprites/32x32x5/BEST13_s08_sprite_32x32x5_081600.png

# View all player ship candidates
explorer.exe best_sprites/32x32x5/

# View bullets
explorer.exe best_sprites/16x16x4/

# View enemies
explorer.exe best_sprites/24x24x4/
```

## Step 3: Copy Assets

Once you've confirmed they look right:

```bash
# Create assets directory
mkdir -p assets/sprites

# Copy the identified sprites
cp best_sprites/32x32x5/BEST13_s08_sprite_32x32x5_081600.png assets/sprites/player_ship.png
cp best_sprites/16x16x4/BEST13_s05_sprite_16x16x4_02f600.png assets/sprites/bullet.png
cp best_sprites/24x24x4/BEST13_s05_sprite_24x24x4_090c00.png assets/sprites/enemy1.png
cp best_sprites/16x16x4/BEST12_s08_sprite_16x16x4_053a00.png assets/sprites/enemy2.png
```

## Step 4: Test in Game

Follow the integration guide in `docs/ASSET_INTEGRATION.md` to load them into the game!

---

## 📊 What Was Identified

From **11,247 extracted sprites**, narrowed down to **15 identified sprites**:

✅ **2 Player Ships** (100% confidence)  
✅ **5 Bullets** (70% confidence)  
✅ **5 Enemies** (60% confidence)  
✅ **3 Boss/Large Enemies** (55% confidence)

See `IDENTIFIED_SPRITES.md` for the complete list with ROM offsets and filenames.

---

## 🎯 The Best Candidate

**Player Ship:** `best_sprites/32x32x5/BEST13_s08_sprite_32x32x5_081600.png`
- 32x32 pixels, 32 colors
- 100% confidence (perfect symmetry, ship colors)
- ROM offset: 0x081600

This is the one! Open it with:
```bash
explorer.exe best_sprites/32x32x5/BEST13_s08_sprite_32x32x5_081600.png
```

# Menace - Music Track Guide

## David Whittaker Soundtrack (1988)

All tracks extracted from `music/menace.dw` - the original Amiga game soundtrack.

### Track Listing

| File | Duration | Description | Suggested Use |
|------|----------|-------------|---------------|
| `menace_sub0.ogg` | 4m:27s | **Main Theme** | Title screen, main menu |
| `menace_sub1.ogg` | 3m:20s | **In-Game Music** | Normal gameplay levels |
| `menace_sub2.ogg` | 2m:31s | **Boss/Ending Theme** | Boss battles, game over, credits |

### Current Implementation

The game currently plays **menace_sub0.ogg** (Main Theme) on loop during gameplay.

### Future Dynamic Music System

To implement authentic game-state music switching:

1. **Title Screen** → Play `menace_sub0.ogg`
2. **Level Start** → Crossfade to `menace_sub1.ogg`
3. **Boss Encounter** → Switch to `menace_sub2.ogg`
4. **Game Over** → Continue `menace_sub2.ogg` or fade out
5. **Victory** → Return to `menace_sub0.ogg` or dedicated victory jingle

All three AudioStreamPlayer nodes (`MusicTitle`, `MusicIngame`, `MusicBoss`) are already set up in `scenes/main.tscn` for easy switching.

### Implementation Example

```gdscript
# In main.gd
func switch_to_ingame_music():
    $MusicTitle.stop()
    $MusicIngame.play()

func switch_to_boss_music():
    $MusicIngame.stop()
    $MusicBoss.play()
```

### Technical Notes

- All tracks rendered at 44.1kHz stereo from authentic Amiga Paula emulation (UADE)
- OGG Vorbis quality 6 encoding
- Original subsong order preserved from `.dw` format
- No audio restoration or enhancement applied - this is the raw 1988 mix

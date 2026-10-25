# Menace - Original Soundtrack

## Authentic 1988 Amiga Music

This directory contains the **authentic original soundtrack** from the 1988 Amiga game **Menace** by DMA Design / Psyclapse.

### Files

- **menace.dw** (34,566 bytes)
  - Composer: **David Whittaker**
  - Format: David Whittaker custom music driver (.dw)
  - Released: October 1988
  - CRC32: `1CC0AACA`
  - Source: Modland Archive / Amiga Music Preservation

### About the Music

David Whittaker composed the music for Menace using his own custom Amiga sound driver format. This proprietary format was widely used in many Amiga games of the era, including his most famous work on "Shadow of the Beast."

The `.dw` format stores:
- Sample data (8-bit PCM audio samples)
- Sequencing information
- Player code specific to David Whittaker's music routine

### How to Play

To play this music on modern systems, you'll need:

1. **Amiga emulator** (e.g., WinUAE, FS-UAE) with a compatible music player
2. **DeliTracker** or **EaglePlayer** (Amiga music players that support DW format)
3. **UADE** (Unix Amiga Delitracker Emulator) - cross-platform command-line player
   ```bash
   uade menace.dw
   ```

### Integration with SDL2

For the C++ SDL2 port, we have several options:

1. **Pre-convert to MOD/WAV/OGG** using UADE or similar tools
2. **Use UADE library** (libuade) to play directly from C++
3. **Extract samples** and recreate the music using SDL2_mixer
4. **Record to WAV/OGG** from an Amiga emulator for simple playback

### Historical Context

This is the **actual music from the original 1988 release**, not the tutorial versions that appeared on the Amiga Format coverdisk in 1990 (which included different MOD files like "does it matter" by Jester).

### References

- **Modland Archive**: https://ftp.modland.com/pub/modules/David%20Whittaker/
- **ExoticA Archive**: https://janeway.exotica.org.uk/release.php?id=61868
- **Demozoo**: https://demozoo.org/music/6573/
- **Composer**: David Whittaker (GB)
- **Game**: Menace by DMA Design / Psyclapse (1988)

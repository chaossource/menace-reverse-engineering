# Menace - Audio Integration Guide

## Original Soundtrack

The authentic 1988 Menace soundtrack has been located and downloaded:

- **File**: `music/menace.dw` (34,566 bytes)
- **Composer**: David Whittaker
- **Format**: David Whittaker custom music driver

## Background: David Whittaker Format (.dw)

David Whittaker created a custom music driver for Amiga games that was used extensively in the late 1980s. This proprietary format includes:

- Custom replay routine (68000 assembly)
- 8-bit PCM sample data
- Sequencing patterns
- Effects parameters

Notable games using DW format:
- Shadow of the Beast (1989)
- Menace (1988)
- Obliterator (1988)
- Eye of Horus (1989)

## Integration Options for SDL2 Port

### Option 1: Pre-Convert to Modern Format (Recommended)

**Pros**: Simple SDL2_mixer integration, cross-platform
**Cons**: Loses some Amiga authenticity (but most practical)

#### Using UADE (Unix Amiga Delitracker Emulator)

```bash
# Install UADE
sudo apt-get install uade

# Convert to WAV
uade -f <output.wav> menace.dw

# Or use uade123 for playback testing
uade123 menace.dw

# Convert WAV to OGG for smaller file size
oggenc output.wav -o menace.ogg
```

#### SDL2 Integration
```cpp
// In src/audio.h
class AudioManager {
public:
    void loadMusic(const std::string& path);
    void playMusic(bool loop = true);
    void stopMusic();
    
private:
    Mix_Music* music_;
};

// In src/audio.cpp
void AudioManager::loadMusic(const std::string& path) {
    music_ = Mix_LoadMUS(path.c_str());
    if (!music_) {
        // Handle error
    }
}

void AudioManager::playMusic(bool loop) {
    Mix_PlayMusic(music_, loop ? -1 : 1);
}
```

### Option 2: Use UADE Library (libuade)

**Pros**: Play authentic .dw format directly
**Cons**: Additional dependency, more complex integration

```cpp
#include <uade/uade.h>

// Initialize UADE
struct uade_state *state = uade_new_state(NULL);

// Load and play
uade_play(state, "menace.dw", -1);

// Get audio samples for SDL2 mixing
while (uade_read_request(state)) {
    uint8_t buffer[4096];
    ssize_t bytes = uade_read(state, buffer, sizeof(buffer));
    // Mix into SDL2 audio stream
}

uade_cleanup_state(state);
```

### Option 3: Record from Emulator

**Pros**: Perfect accuracy
**Cons**: Manual process, one-time export

1. Use WinUAE or FS-UAE
2. Load Menace game
3. Use emulator's audio recording feature
4. Export as WAV
5. Convert to OGG

### Option 4: Sample Extraction & Recreation

**Pros**: Full control
**Cons**: Very complex, requires reverse engineering the patterns

This would involve:
1. Extracting the raw PCM samples from menace.dw
2. Reverse engineering the sequence data
3. Recreating the music using SDL2_mixer's sample playback
4. **Not recommended** - too time-consuming

## Recommended Approach

For the initial port:

1. **Convert using UADE**:
   ```bash
   uade -f music/menace.wav music/menace.dw
   oggenc music/menace.wav -o music/menace.ogg
   ```

2. **Add to CMakeLists.txt**:
   ```cmake
   install(FILES
       ${CMAKE_SOURCE_DIR}/music/menace.ogg
       DESTINATION share/menace/music
   )
   ```

3. **Load in Game**:
   ```cpp
   audioManager.loadMusic("music/menace.ogg");
   audioManager.playMusic(true);  // Loop
   ```

## Implementation Status

- [x] Authentic soundtrack located and downloaded
- [x] Documentation created
- [ ] Install UADE for conversion
- [ ] Convert .dw to WAV/OGG
- [ ] Create AudioManager class
- [ ] Integrate with SDL2_mixer
- [ ] Add music playback to game loop

## Sound Effects

The repository also contains:
- `extracted_audio/`: 100 raw 8-bit PCM samples extracted from ROM analysis
  - These are candidate sound effects
  - Need classification and integration
  - See `docs/AUDIO_EXTRACTION.md` for details

## References

- **UADE Project**: https://zakalwe.fi/uade/
- **David Whittaker Format**: ExoticA DW-DavidWhittaker documentation
- **SDL2_mixer**: https://www.libsdl.org/projects/SDL_mixer/
- **Amiga Music Preservation**: https://amp.dascene.net/

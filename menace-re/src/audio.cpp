#include "audio.h"
#include <iostream>

namespace Menace {

Audio::Audio() : initialized_(false) {
}

Audio::~Audio() {
    shutdown();
}

bool Audio::initialize() {
    if (initialized_) {
        return true;
    }
    
    // Initialize SDL_mixer
    if (Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, 2, 2048) < 0) {
        std::cerr << "SDL_mixer initialization failed: " << Mix_GetError() << std::endl;
        return false;
    }
    
    // Allocate mixing channels
    Mix_AllocateChannels(16);
    
    initialized_ = true;
    std::cout << "Audio system initialized successfully" << std::endl;
    return true;
}

void Audio::shutdown() {
    if (!initialized_) {
        return;
    }
    
    // Free music
    for (auto& pair : music_) {
        if (pair.second) {
            Mix_FreeMusic(pair.second);
        }
    }
    music_.clear();
    
    // Free sounds
    for (auto& pair : sounds_) {
        if (pair.second) {
            Mix_FreeChunk(pair.second);
        }
    }
    sounds_.clear();
    
    Mix_CloseAudio();
    initialized_ = false;
}

bool Audio::loadMusic(const std::string& name, const std::string& path) {
    Mix_Music* music = Mix_LoadMUS(path.c_str());
    if (!music) {
        std::cerr << "Failed to load music " << path << ": " << Mix_GetError() << std::endl;
        return false;
    }
    
    music_[name] = music;
    return true;
}

bool Audio::loadSound(const std::string& name, const std::string& path) {
    Mix_Chunk* sound = Mix_LoadWAV(path.c_str());
    if (!sound) {
        std::cerr << "Failed to load sound " << path << ": " << Mix_GetError() << std::endl;
        return false;
    }
    
    sounds_[name] = sound;
    return true;
}

void Audio::playMusic(const std::string& name, bool loop) {
    auto it = music_.find(name);
    if (it != music_.end()) {
        Mix_PlayMusic(it->second, loop ? -1 : 0);
    }
}

void Audio::stopMusic() {
    Mix_HaltMusic();
}

void Audio::pauseMusic() {
    Mix_PauseMusic();
}

void Audio::resumeMusic() {
    Mix_ResumeMusic();
}

void Audio::playSound(const std::string& name) {
    auto it = sounds_.find(name);
    if (it != sounds_.end()) {
        Mix_PlayChannel(-1, it->second, 0);
    }
}

void Audio::setMusicVolume(int volume) {
    Mix_VolumeMusic(volume);
}

void Audio::setSoundVolume(int volume) {
    // Set volume for all channels
    Mix_Volume(-1, volume);
}

} // namespace Menace

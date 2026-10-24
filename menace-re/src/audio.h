#pragma once

#include <SDL2/SDL_mixer.h>
#include <string>
#include <map>
#include <memory>

namespace Menace {

class Audio {
public:
    Audio();
    ~Audio();
    
    bool initialize();
    void shutdown();
    
    bool loadMusic(const std::string& name, const std::string& path);
    bool loadSound(const std::string& name, const std::string& path);
    
    void playMusic(const std::string& name, bool loop = true);
    void stopMusic();
    void pauseMusic();
    void resumeMusic();
    
    void playSound(const std::string& name);
    
    void setMusicVolume(int volume);  // 0-128
    void setSoundVolume(int volume);   // 0-128
    
private:
    std::map<std::string, Mix_Music*> music_;
    std::map<std::string, Mix_Chunk*> sounds_;
    bool initialized_;
};

} // namespace Menace

#pragma once

#include "types.h"
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <map>
#include <string>

namespace Menace {

class Texture {
public:
    SDL_Texture* texture;
    int width, height;
    
    Texture() : texture(nullptr), width(0), height(0) {}
    ~Texture();
    
    bool loadFromFile(SDL_Renderer* renderer, const std::string& path);
    void free();
};

class Renderer {
public:
    Renderer();
    ~Renderer();
    
    bool initialize();
    void shutdown();
    
    void clear(const Color& color = Color(0, 0, 0));
    void present();
    
    bool loadTexture(const std::string& name, const std::string& path);
    void drawTexture(const std::string& name, const Rect& dest, const Rect* src = nullptr);
    void drawRect(const Rect& rect, const Color& color);
    void drawLine(const Vec2& start, const Vec2& end, const Color& color);
    
    SDL_Renderer* getSDLRenderer() { return renderer_; }
    
private:
    SDL_Window* window_;
    SDL_Renderer* renderer_;
    std::map<std::string, std::unique_ptr<Texture>> textures_;
    
    bool initialized_;
};

} // namespace Menace

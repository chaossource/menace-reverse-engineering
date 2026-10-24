#include "renderer.h"
#include <iostream>
#include <cmath>

namespace Menace {

// Texture implementation
Texture::~Texture() {
    free();
}

bool Texture::loadFromFile(SDL_Renderer* renderer, const std::string& path) {
    free();
    
    SDL_Surface* surface = IMG_Load(path.c_str());
    if (!surface) {
        std::cerr << "Failed to load image " << path << ": " << IMG_GetError() << std::endl;
        return false;
    }
    
    texture = SDL_CreateTextureFromSurface(renderer, surface);
    if (!texture) {
        std::cerr << "Failed to create texture from " << path << ": " << SDL_GetError() << std::endl;
        SDL_FreeSurface(surface);
        return false;
    }
    
    width = surface->w;
    height = surface->h;
    
    SDL_FreeSurface(surface);
    return true;
}

void Texture::free() {
    if (texture) {
        SDL_DestroyTexture(texture);
        texture = nullptr;
        width = 0;
        height = 0;
    }
}

// Renderer implementation
Renderer::Renderer() 
    : window_(nullptr), renderer_(nullptr), initialized_(false) {
}

Renderer::~Renderer() {
    shutdown();
}

bool Renderer::initialize() {
    if (initialized_) {
        return true;
    }
    
    // Initialize SDL
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        std::cerr << "SDL initialization failed: " << SDL_GetError() << std::endl;
        return false;
    }
    
    // Initialize SDL_image
    int imgFlags = IMG_INIT_PNG;
    if (!(IMG_Init(imgFlags) & imgFlags)) {
        std::cerr << "SDL_image initialization failed: " << IMG_GetError() << std::endl;
        return false;
    }
    
    // Create window
    window_ = SDL_CreateWindow(
        "Menace - Modern Port",
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        SCREEN_WIDTH * WINDOW_SCALE,
        SCREEN_HEIGHT * WINDOW_SCALE,
        SDL_WINDOW_SHOWN
    );
    
    if (!window_) {
        std::cerr << "Window creation failed: " << SDL_GetError() << std::endl;
        return false;
    }
    
    // Create renderer
    renderer_ = SDL_CreateRenderer(window_, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!renderer_) {
        std::cerr << "Renderer creation failed: " << SDL_GetError() << std::endl;
        return false;
    }
    
    // Set logical size for automatic scaling
    SDL_RenderSetLogicalSize(renderer_, SCREEN_WIDTH, SCREEN_HEIGHT);
    
    // Set render draw blend mode
    SDL_SetRenderDrawBlendMode(renderer_, SDL_BLENDMODE_BLEND);
    
    initialized_ = true;
    std::cout << "Renderer initialized successfully" << std::endl;
    return true;
}

void Renderer::shutdown() {
    if (!initialized_) {
        return;
    }
    
    // Free all textures
    textures_.clear();
    
    // Destroy renderer and window
    if (renderer_) {
        SDL_DestroyRenderer(renderer_);
        renderer_ = nullptr;
    }
    
    if (window_) {
        SDL_DestroyWindow(window_);
        window_ = nullptr;
    }
    
    IMG_Quit();
    SDL_Quit();
    
    initialized_ = false;
}

void Renderer::clear(const Color& color) {
    SDL_SetRenderDrawColor(renderer_, color.r, color.g, color.b, color.a);
    SDL_RenderClear(renderer_);
}

void Renderer::present() {
    SDL_RenderPresent(renderer_);
}

bool Renderer::loadTexture(const std::string& name, const std::string& path) {
    auto texture = std::make_unique<Texture>();
    if (!texture->loadFromFile(renderer_, path)) {
        return false;
    }
    
    textures_[name] = std::move(texture);
    return true;
}

void Renderer::drawTexture(const std::string& name, const Rect& dest, const Rect* src) {
    auto it = textures_.find(name);
    if (it == textures_.end()) {
        return;
    }
    
    SDL_Rect sdlDest = {
        static_cast<int>(dest.x),
        static_cast<int>(dest.y),
        static_cast<int>(dest.w),
        static_cast<int>(dest.h)
    };
    
    SDL_Rect* sdlSrc = nullptr;
    SDL_Rect srcRect;
    if (src) {
        srcRect = {
            static_cast<int>(src->x),
            static_cast<int>(src->y),
            static_cast<int>(src->w),
            static_cast<int>(src->h)
        };
        sdlSrc = &srcRect;
    }
    
    SDL_RenderCopy(renderer_, it->second->texture, sdlSrc, &sdlDest);
}

void Renderer::drawRect(const Rect& rect, const Color& color) {
    SDL_SetRenderDrawColor(renderer_, color.r, color.g, color.b, color.a);
    
    SDL_Rect sdlRect = {
        static_cast<int>(rect.x),
        static_cast<int>(rect.y),
        static_cast<int>(rect.w),
        static_cast<int>(rect.h)
    };
    
    SDL_RenderFillRect(renderer_, &sdlRect);
}

void Renderer::drawLine(const Vec2& start, const Vec2& end, const Color& color) {
    SDL_SetRenderDrawColor(renderer_, color.r, color.g, color.b, color.a);
    SDL_RenderDrawLine(
        renderer_,
        static_cast<int>(start.x),
        static_cast<int>(start.y),
        static_cast<int>(end.x),
        static_cast<int>(end.y)
    );
}

// Vec2 implementation
float Vec2::length() const {
    return std::sqrt(x * x + y * y);
}

Vec2 Vec2::normalized() const {
    float len = length();
    if (len > 0) {
        return Vec2(x / len, y / len);
    }
    return Vec2(0, 0);
}

// Rect implementation
bool Rect::intersects(const Rect& other) const {
    return !(x + w < other.x ||
             other.x + other.w < x ||
             y + h < other.y ||
             other.y + other.h < y);
}

} // namespace Menace

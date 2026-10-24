#pragma once

#include <cstdint>
#include <memory>
#include <vector>
#include <string>

namespace Menace {

// Screen dimensions (original Amiga resolution)
constexpr int SCREEN_WIDTH = 320;
constexpr int SCREEN_HEIGHT = 256;
constexpr int WINDOW_SCALE = 2;  // 2x scaling for modern displays

// Game constants
constexpr int FPS = 50;  // PAL frame rate
constexpr float FRAME_TIME = 1.0f / FPS;

// Vector2D for positions and velocities
struct Vec2 {
    float x, y;
    
    Vec2() : x(0), y(0) {}
    Vec2(float x, float y) : x(x), y(y) {}
    
    Vec2 operator+(const Vec2& other) const {
        return Vec2(x + other.x, y + other.y);
    }
    
    Vec2 operator-(const Vec2& other) const {
        return Vec2(x - other.x, y - other.y);
    }
    
    Vec2 operator*(float scalar) const {
        return Vec2(x * scalar, y * scalar);
    }
    
    float length() const;
    Vec2 normalized() const;
};

// Rectangle for collision detection
struct Rect {
    float x, y, w, h;
    
    Rect() : x(0), y(0), w(0), h(0) {}
    Rect(float x, float y, float w, float h) : x(x), y(y), w(w), h(h) {}
    
    bool intersects(const Rect& other) const;
};

// Color (RGBA)
struct Color {
    uint8_t r, g, b, a;
    
    Color() : r(0), g(0), b(0), a(255) {}
    Color(uint8_t r, uint8_t g, uint8_t b, uint8_t a = 255)
        : r(r), g(g), b(b), a(a) {}
};

// Game object types
enum class EntityType {
    PLAYER,
    ENEMY,
    BULLET,
    POWERUP,
    EXPLOSION
};

// Input state
struct InputState {
    bool up, down, left, right;
    bool fire;
    bool pause;
    bool quit;
    
    InputState() : up(false), down(false), left(false), right(false),
                   fire(false), pause(false), quit(false) {}
};

} // namespace Menace

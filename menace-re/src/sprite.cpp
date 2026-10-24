#include "sprite.h"

namespace Menace {

Sprite::Sprite() 
    : position_(0, 0), velocity_(0, 0), width_(16), height_(16),
      active_(true), type_(EntityType::ENEMY) {
}

Sprite::~Sprite() {
}

void Sprite::setTexture(const std::string& textureName) {
    textureName_ = textureName;
}

void Sprite::setPosition(const Vec2& pos) {
    position_ = pos;
}

void Sprite::setSize(float w, float h) {
    width_ = w;
    height_ = h;
}

void Sprite::setVelocity(const Vec2& vel) {
    velocity_ = vel;
}

void Sprite::update(float deltaTime) {
    if (!active_) {
        return;
    }
    
    position_ = position_ + velocity_ * deltaTime;
}

Rect Sprite::getBounds() const {
    return Rect(position_.x, position_.y, width_, height_);
}

} // namespace Menace

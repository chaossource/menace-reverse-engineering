#pragma once

#include "types.h"
#include <string>

namespace Menace {

class Sprite {
public:
    Sprite();
    ~Sprite();
    
    void setTexture(const std::string& textureName);
    void setPosition(const Vec2& pos);
    void setSize(float w, float h);
    void setVelocity(const Vec2& vel);
    
    void update(float deltaTime);
    
    const Vec2& getPosition() const { return position_; }
    const Vec2& getVelocity() const { return velocity_; }
    Rect getBounds() const;
    const std::string& getTexture() const { return textureName_; }
    
    bool isActive() const { return active_; }
    void setActive(bool active) { active_ = active; }
    
    EntityType getType() const { return type_; }
    void setType(EntityType type) { type_ = type; }
    
private:
    std::string textureName_;
    Vec2 position_;
    Vec2 velocity_;
    float width_, height_;
    bool active_;
    EntityType type_;
};

} // namespace Menace

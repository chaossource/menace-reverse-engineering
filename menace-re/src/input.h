#pragma once

#include "types.h"
#include <SDL2/SDL.h>

namespace Menace {

class Input {
public:
    Input();
    ~Input();
    
    void update();
    const InputState& getState() const { return state_; }
    
private:
    InputState state_;
    const Uint8* keyboardState_;
};

} // namespace Menace

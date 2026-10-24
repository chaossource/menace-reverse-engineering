#include "input.h"

namespace Menace {

Input::Input() : keyboardState_(nullptr) {
    keyboardState_ = SDL_GetKeyboardState(nullptr);
}

Input::~Input() {
}

void Input::update() {
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            state_.quit = true;
        }
    }
    
    // Update keyboard state
    keyboardState_ = SDL_GetKeyboardState(nullptr);
    
    // Arrow keys or WASD for movement
    state_.up = keyboardState_[SDL_SCANCODE_UP] || keyboardState_[SDL_SCANCODE_W];
    state_.down = keyboardState_[SDL_SCANCODE_DOWN] || keyboardState_[SDL_SCANCODE_S];
    state_.left = keyboardState_[SDL_SCANCODE_LEFT] || keyboardState_[SDL_SCANCODE_A];
    state_.right = keyboardState_[SDL_SCANCODE_RIGHT] || keyboardState_[SDL_SCANCODE_D];
    
    // Space or Ctrl for fire
    state_.fire = keyboardState_[SDL_SCANCODE_SPACE] || 
                  keyboardState_[SDL_SCANCODE_LCTRL] ||
                  keyboardState_[SDL_SCANCODE_RCTRL];
    
    // P or Escape for pause
    state_.pause = keyboardState_[SDL_SCANCODE_P] || 
                   keyboardState_[SDL_SCANCODE_ESCAPE];
}

} // namespace Menace

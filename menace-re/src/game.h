#pragma once

#include "types.h"
#include "renderer.h"
#include "input.h"
#include "audio.h"
#include "sprite.h"
#include <memory>
#include <vector>

namespace Menace {

class Game {
public:
    Game();
    ~Game();
    
    bool initialize();
    void run();
    void shutdown();
    
private:
    void loadAssets();
    void update(float deltaTime);
    void render();
    void handleInput();
    
    void initPlayer();
    void updatePlayer(float deltaTime);
    void spawnEnemy();
    void updateEnemies(float deltaTime);
    void checkCollisions();
    
    std::unique_ptr<Renderer> renderer_;
    std::unique_ptr<Input> input_;
    std::unique_ptr<Audio> audio_;
    
    std::unique_ptr<Sprite> player_;
    std::vector<std::unique_ptr<Sprite>> enemies_;
    std::vector<std::unique_ptr<Sprite>> bullets_;
    
    bool running_;
    bool paused_;
    float enemySpawnTimer_;
    int score_;
    int lives_;
};

} // namespace Menace

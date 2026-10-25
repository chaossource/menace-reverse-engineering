#include "game.h"
#include <iostream>
#include <algorithm>
#include <random>

namespace Menace {

Game::Game() 
    : running_(false), paused_(false), enemySpawnTimer_(0.0f),
      score_(0), lives_(3),
      playerWeaponLevel_(1), playerTilt_(2), playerTiltTimer_(0.0f) {
}

Game::~Game() {
    shutdown();
}

bool Game::initialize() {
    std::cout << "Initializing Menace..." << std::endl;
    
    // Create subsystems
    renderer_ = std::make_unique<Renderer>();
    input_ = std::make_unique<Input>();
    audio_ = std::make_unique<Audio>();
    assets_ = std::make_unique<AssetManager>();
    
    // Initialize renderer
    if (!renderer_->initialize()) {
        std::cerr << "Failed to initialize renderer" << std::endl;
        return false;
    }
    
    // Initialize audio
    if (!audio_->initialize()) {
        std::cerr << "Warning: Failed to initialize audio (continuing anyway)" << std::endl;
    }
    
    // Load assets
    loadAssets();
    
    // Initialize game objects
    initPlayer();
    
    running_ = true;
    std::cout << "Game initialized successfully!" << std::endl;
    std::cout << "\nControls:" << std::endl;
    std::cout << "  Arrow Keys / WASD - Move" << std::endl;
    std::cout << "  Space / Ctrl      - Fire" << std::endl;
    std::cout << "  P / Escape        - Pause" << std::endl;
    std::cout << std::endl;
    
    return true;
}

void Game::loadAssets() {
    std::cout << "Loading assets..." << std::endl;
    
    if (!assets_->loadAll(renderer_.get())) {
        std::cerr << "Warning: Some assets failed to load" << std::endl;
    }
    
    std::cout << "Assets ready!" << std::endl;
}

void Game::initPlayer() {
    player_ = std::make_unique<Sprite>();
    player_->setType(EntityType::PLAYER);
    // Ship is 32 pixels wide (back 16 + front 16), 44 pixels high
    player_->setPosition(Vec2(SCREEN_WIDTH / 2 - 16, SCREEN_HEIGHT - 60));
    player_->setSize(32, 44);
    player_->setVelocity(Vec2(0, 0));
}

void Game::run() {
    const float FIXED_TIMESTEP = FRAME_TIME;
    float accumulator = 0.0f;
    
    Uint64 lastTime = SDL_GetPerformanceCounter();
    const Uint64 frequency = SDL_GetPerformanceFrequency();
    
    while (running_) {
        // Calculate delta time
        Uint64 currentTime = SDL_GetPerformanceCounter();
        float deltaTime = (float)(currentTime - lastTime) / frequency;
        lastTime = currentTime;
        
        // Cap delta time to prevent spiral of death
        if (deltaTime > 0.25f) {
            deltaTime = 0.25f;
        }
        
        accumulator += deltaTime;
        
        // Handle input
        input_->update();
        handleInput();
        
        // Fixed timestep updates
        while (accumulator >= FIXED_TIMESTEP) {
            if (!paused_) {
                update(FIXED_TIMESTEP);
            }
            accumulator -= FIXED_TIMESTEP;
        }
        
        // Render
        render();
    }
}

void Game::handleInput() {
    const InputState& state = input_->getState();
    
    if (state.quit) {
        running_ = false;
    }
    
    if (state.pause) {
        // Simple pause toggle (with debounce needed in real implementation)
        // paused_ = !paused_;
    }
}

void Game::update(float deltaTime) {
    // Update player
    updatePlayer(deltaTime);
    
    // Spawn enemies
    enemySpawnTimer_ += deltaTime;
    if (enemySpawnTimer_ >= 2.0f) {
        spawnEnemy();
        enemySpawnTimer_ = 0.0f;
    }
    
    // Update enemies
    updateEnemies(deltaTime);
    
    // Update bullets
    for (auto& bullet : bullets_) {
        bullet->update(deltaTime);
    }
    
    // Remove inactive entities
    bullets_.erase(
        std::remove_if(bullets_.begin(), bullets_.end(),
            [](const auto& b) { 
                return !b->isActive() || 
                       b->getPosition().y < 0 || 
                       b->getPosition().y > SCREEN_HEIGHT; 
            }),
        bullets_.end()
    );
    
    enemies_.erase(
        std::remove_if(enemies_.begin(), enemies_.end(),
            [](const auto& e) { 
                return !e->isActive() || 
                       e->getPosition().y > SCREEN_HEIGHT + 32; 
            }),
        enemies_.end()
    );
    
    // Check collisions
    checkCollisions();
}

void Game::updatePlayer(float deltaTime) {
    const InputState& state = input_->getState();
    
    // Movement speed
    const float PLAYER_SPEED = 150.0f;
    Vec2 velocity(0, 0);
    
    if (state.left) velocity.x -= PLAYER_SPEED;
    if (state.right) velocity.x += PLAYER_SPEED;
    if (state.up) velocity.y -= PLAYER_SPEED;
    if (state.down) velocity.y += PLAYER_SPEED;
    
    player_->setVelocity(velocity);
    player_->update(deltaTime);
    
    // Update ship tilt based on vertical movement
    if (state.up) {
        playerTilt_ = 1;  // Tilt up
        playerTiltTimer_ = 0.0f;
    } else if (state.down) {
        playerTilt_ = 3;  // Tilt down
        playerTiltTimer_ = 0.0f;
    } else {
        // Return to level after 0.1 seconds
        playerTiltTimer_ += deltaTime;
        if (playerTiltTimer_ >= 0.1f) {
            playerTilt_ = 2;  // Level
        }
    }
    
    // Keep player on screen
    Vec2 pos = player_->getPosition();
    if (pos.x < 0) pos.x = 0;
    if (pos.x > SCREEN_WIDTH - 32) pos.x = SCREEN_WIDTH - 32;  // Ship is 32 pixels wide
    if (pos.y < 0) pos.y = 0;
    if (pos.y > SCREEN_HEIGHT - 44) pos.y = SCREEN_HEIGHT - 44;  // Ship is 44 pixels high
    player_->setPosition(pos);
    
    // Firing
    static float fireTimer = 0.0f;
    fireTimer += deltaTime;
    
    if (state.fire && fireTimer >= 0.15f) {
        auto bullet = std::make_unique<Sprite>();
        bullet->setType(EntityType::BULLET);
        bullet->setTexture("player_bullet_small");
        bullet->setPosition(Vec2(player_->getPosition().x + 14, player_->getPosition().y - 8));
        bullet->setSize(4, 4);
        bullet->setVelocity(Vec2(0, -300));
        bullets_.push_back(std::move(bullet));
        fireTimer = 0.0f;
    }
}

void Game::spawnEnemy() {
    static std::random_device rd;
    static std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(16, SCREEN_WIDTH - 32);
    
    auto enemy = std::make_unique<Sprite>();
    enemy->setType(EntityType::ENEMY);
    enemy->setPosition(Vec2(dis(gen), -20));
    enemy->setSize(16, 16);
    enemy->setVelocity(Vec2(0, 50 + score_ / 100.0f));  // Speed increases with score
    enemies_.push_back(std::move(enemy));
}

void Game::updateEnemies(float deltaTime) {
    for (auto& enemy : enemies_) {
        enemy->update(deltaTime);
    }
}

void Game::checkCollisions() {
    // Bullet vs Enemy collisions
    for (auto& bullet : bullets_) {
        if (!bullet->isActive()) continue;
        
        Rect bulletBounds = bullet->getBounds();
        
        for (auto& enemy : enemies_) {
            if (!enemy->isActive()) continue;
            
            Rect enemyBounds = enemy->getBounds();
            
            if (bulletBounds.intersects(enemyBounds)) {
                bullet->setActive(false);
                enemy->setActive(false);
                score_ += 10;
                break;
            }
        }
    }
    
    // Player vs Enemy collisions
    Rect playerBounds = player_->getBounds();
    for (auto& enemy : enemies_) {
        if (!enemy->isActive()) continue;
        
        Rect enemyBounds = enemy->getBounds();
        
        if (playerBounds.intersects(enemyBounds)) {
            enemy->setActive(false);
            lives_--;
            
            if (lives_ <= 0) {
                std::cout << "Game Over! Final Score: " << score_ << std::endl;
                running_ = false;
            }
        }
    }
}

void Game::render() {
    // Clear screen
    renderer_->clear(Color(0, 0, 32));  // Dark blue background
    
    // Draw player ship (composite: back + front)
    Vec2 playerPos = player_->getPosition();
    
    // Get texture names for current ship state
    std::string shipBack = assets_->getPlayerShipBack(playerWeaponLevel_, playerTilt_);
    std::string shipFront = assets_->getPlayerShipFront(playerWeaponLevel_, playerTilt_);
    
    // Draw back part (left 16 pixels, 44 high)
    Rect backRect(playerPos.x, playerPos.y, 16, 44);
    renderer_->drawTexture(shipBack, backRect);
    
    // Draw front part (right 16 pixels, 22 high, offset by 11 pixels down)
    Rect frontRect(playerPos.x + 16, playerPos.y + 11, 16, 22);
    renderer_->drawTexture(shipFront, frontRect);
    
    // Draw enemies
    for (const auto& enemy : enemies_) {
        if (enemy->isActive()) {
            Rect enemyRect = enemy->getBounds();
            // Fallback to colored rectangle if no texture
            if (enemy->getTexture().empty()) {
                renderer_->drawRect(enemyRect, Color(255, 0, 0));  // Red
            } else {
                renderer_->drawTexture(enemy->getTexture(), enemyRect);
            }
        }
    }
    
    // Draw bullets
    for (const auto& bullet : bullets_) {
        if (bullet->isActive()) {
            Rect bulletRect = bullet->getBounds();
            // Use texture if available
            if (!bullet->getTexture().empty()) {
                renderer_->drawTexture(bullet->getTexture(), bulletRect);
            } else {
                renderer_->drawRect(bulletRect, Color(255, 255, 0));  // Yellow fallback
            }
        }
    }
    
    // TODO: Draw HUD (score, lives)
    
    // Present
    renderer_->present();
}

void Game::shutdown() {
    std::cout << "Shutting down..." << std::endl;
    
    // Clear game objects
    player_.reset();
    enemies_.clear();
    bullets_.clear();
    
    // Shutdown subsystems
    if (audio_) {
        audio_->shutdown();
    }
    
    if (renderer_) {
        renderer_->shutdown();
    }
    
    running_ = false;
}

} // namespace Menace

#pragma once

#include "renderer.h"
#include <memory>
#include <string>

namespace Menace {

/**
 * Asset Manager - Loads and manages game sprites
 */
class AssetManager {
public:
    AssetManager();
    ~AssetManager();
    
    /**
     * Load all game assets from the community_sprites directory
     */
    bool loadAll(Renderer* renderer);
    
    /**
     * Get texture names for different game objects
     */
    
    // Player ship textures (composite: back + front)
    std::string getPlayerShipBack(int weaponLevel, int tilt) const;
    std::string getPlayerShipFront(int weaponLevel, int tilt) const;
    
    // Enemy textures
    std::string getEnemyTexture(const std::string& enemyType) const;
    
    // Bullet textures
    std::string getBulletTexture(const std::string& bulletType) const;
    
    // Animation frame for multi-frame sprites
    std::string getMineFrame(int frame) const;
    std::string getBonusFrame(int frame) const;
    
    // Constants
    static constexpr int NUM_WEAPON_LEVELS = 4;  // 1-4
    static constexpr int NUM_TILT_STATES = 3;    // 1-3 (up, level, down)
    static constexpr int NUM_MINE_FRAMES = 8;
    static constexpr int NUM_BONUS_FRAMES = 7;

private:
    bool loadPlayerShips(Renderer* renderer);
    bool loadEnemies(Renderer* renderer);
    bool loadBullets(Renderer* renderer);
    bool loadMines(Renderer* renderer);
    bool loadBonus(Renderer* renderer);
    bool loadTilesets(Renderer* renderer);
    
    std::string assetPath_;
};

} // namespace Menace

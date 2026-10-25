#include "assets.h"
#include <iostream>
#include <sstream>
#include <iomanip>
#include <algorithm>

namespace Menace {

AssetManager::AssetManager() 
    : assetPath_("community_sprites/") {
}

AssetManager::~AssetManager() {
}

bool AssetManager::loadAll(Renderer* renderer) {
    std::cout << "Loading game assets..." << std::endl;
    
    bool success = true;
    
    success &= loadPlayerShips(renderer);
    success &= loadEnemies(renderer);
    success &= loadBullets(renderer);
    success &= loadMines(renderer);
    success &= loadBonus(renderer);
    success &= loadTilesets(renderer);
    
    if (success) {
        std::cout << "All assets loaded successfully!" << std::endl;
    } else {
        std::cerr << "Warning: Some assets failed to load" << std::endl;
    }
    
    return success;
}

bool AssetManager::loadPlayerShips(Renderer* renderer) {
    std::cout << "  Loading player ships..." << std::endl;
    
    int loaded = 0;
    int total = NUM_WEAPON_LEVELS * NUM_TILT_STATES * 2;  // Back + Front
    
    // Load all ship variants: ship{weapon}.{tilt}_{part}.png
    // weapon: 1-4, tilt: 1-3, part: Back/Front
    for (int weapon = 1; weapon <= NUM_WEAPON_LEVELS; weapon++) {
        for (int tilt = 1; tilt <= NUM_TILT_STATES; tilt++) {
            // Back part
            std::stringstream backName, backPath;
            backName << "ship" << weapon << "." << tilt << "_Back";
            backPath << assetPath_ << backName.str() << ".png";
            
            if (renderer->loadTexture(backName.str(), backPath.str())) {
                loaded++;
            }
            
            // Front part
            std::stringstream frontName, frontPath;
            frontName << "ship" << weapon << "." << tilt << "_Front";
            frontPath << assetPath_ << frontName.str() << ".png";
            
            if (renderer->loadTexture(frontName.str(), frontPath.str())) {
                loaded++;
            }
        }
    }
    
    std::cout << "    Loaded " << loaded << "/" << total << " ship sprites" << std::endl;
    return loaded == total;
}

bool AssetManager::loadEnemies(Renderer* renderer) {
    std::cout << "  Loading enemies..." << std::endl;
    
    // List of enemy sprite files from Aliens_*.png
    const char* enemies[] = {
        "jellyfish1", "jellyfish2", "eye", "tadpole", "bubble",
        "slime", "mouth", "snakehead", "snakebody", "guardian.eye1",
        "explosion1", "borderbl", "borderbr", "bordertl", "bordertr"
    };
    
    int loaded = 0;
    for (const char* enemy : enemies) {
        std::stringstream name, path;
        name << "enemy_" << enemy;
        path << assetPath_ << "Aliens_" << enemy << ".png";
        
        if (renderer->loadTexture(name.str(), path.str())) {
            loaded++;
        }
    }
    
    std::cout << "    Loaded " << loaded << "/15 enemy sprites" << std::endl;
    return loaded > 0;  // At least some loaded
}

bool AssetManager::loadBullets(Renderer* renderer) {
    std::cout << "  Loading bullets..." << std::endl;
    
    const char* bullets[] = {
        "player_bullet_small", "player_bullet_medium", "player_bullet_diamond",
        "player_cannon", "player_cannon_large",
        "player_laser", "player_laser_large",
        "enemy_bullet_small", "enemy_bullet_medium", "enemy_bullet_diamond",
        "boss_bullet", "boss_bullet_large"
    };
    
    int loaded = 0;
    for (const char* bullet : bullets) {
        std::stringstream path;
        path << assetPath_ << "bullets/" << bullet << ".png";
        
        if (renderer->loadTexture(bullet, path.str())) {
            loaded++;
        }
    }
    
    std::cout << "    Loaded " << loaded << "/12 bullet sprites" << std::endl;
    return loaded > 0;
}

bool AssetManager::loadMines(Renderer* renderer) {
    std::cout << "  Loading mines..." << std::endl;
    
    int loaded = 0;
    for (int frame = 0; frame < NUM_MINE_FRAMES; frame++) {
        std::stringstream name, path;
        name << "mine_frame" << std::setfill('0') << std::setw(2) << frame;
        path << assetPath_ << "mines/" << name.str() << ".png";
        
        if (renderer->loadTexture(name.str(), path.str())) {
            loaded++;
        }
    }
    
    std::cout << "    Loaded " << loaded << "/8 mine frames" << std::endl;
    return loaded > 0;
}

bool AssetManager::loadBonus(Renderer* renderer) {
    std::cout << "  Loading bonus items..." << std::endl;
    
    int loaded = 0;
    for (int frame = 0; frame < NUM_BONUS_FRAMES; frame++) {
        std::stringstream name, path;
        name << "bonus_frame" << std::setfill('0') << std::setw(2) << frame;
        path << assetPath_ << "bonus/" << name.str() << ".png";
        
        if (renderer->loadTexture(name.str(), path.str())) {
            loaded++;
        }
    }
    
    std::cout << "    Loaded " << loaded << "/7 bonus sprites" << std::endl;
    return loaded > 0;
}

bool AssetManager::loadTilesets(Renderer* renderer) {
    std::cout << "  Loading tilesets..." << std::endl;
    
    bool bg = renderer->loadTexture("backgrounds", assetPath_ + "backgrounds.png");
    bool fg = renderer->loadTexture("foregrounds", assetPath_ + "foregrounds.png");
    
    std::cout << "    Loaded " << (bg + fg) << "/2 tilesets" << std::endl;
    return bg || fg;
}

// Texture name getters
std::string AssetManager::getPlayerShipBack(int weaponLevel, int tilt) const {
    std::stringstream name;
    // Clamp values
    weaponLevel = std::max(1, std::min(NUM_WEAPON_LEVELS, weaponLevel));
    tilt = std::max(1, std::min(NUM_TILT_STATES, tilt));
    
    name << "ship" << weaponLevel << "." << tilt << "_Back";
    return name.str();
}

std::string AssetManager::getPlayerShipFront(int weaponLevel, int tilt) const {
    std::stringstream name;
    weaponLevel = std::max(1, std::min(NUM_WEAPON_LEVELS, weaponLevel));
    tilt = std::max(1, std::min(NUM_TILT_STATES, tilt));
    
    name << "ship" << weaponLevel << "." << tilt << "_Front";
    return name.str();
}

std::string AssetManager::getEnemyTexture(const std::string& enemyType) const {
    return "enemy_" + enemyType;
}

std::string AssetManager::getBulletTexture(const std::string& bulletType) const {
    return bulletType;
}

std::string AssetManager::getMineFrame(int frame) const {
    std::stringstream name;
    frame = frame % NUM_MINE_FRAMES;
    name << "mine_frame" << std::setfill('0') << std::setw(2) << frame;
    return name.str();
}

std::string AssetManager::getBonusFrame(int frame) const {
    std::stringstream name;
    frame = frame % NUM_BONUS_FRAMES;
    name << "bonus_frame" << std::setfill('0') << std::setw(2) << frame;
    return name.str();
}

} // namespace Menace

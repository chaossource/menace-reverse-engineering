#include "game.h"
#include <iostream>
#include <exception>

int main(int argc, char* argv[]) {
    (void)argc;
    (void)argv;
    
    std::cout << "========================================" << std::endl;
    std::cout << "  MENACE - Modern x86 Port" << std::endl;
    std::cout << "  Original: DMA Design / Psygnosis 1988" << std::endl;
    std::cout << "  Port: Reverse Engineered 2026" << std::endl;
    std::cout << "========================================" << std::endl;
    std::cout << std::endl;
    
    try {
        Menace::Game game;
        
        if (!game.initialize()) {
            std::cerr << "Failed to initialize game" << std::endl;
            return 1;
        }
        
        game.run();
        game.shutdown();
        
    } catch (const std::exception& e) {
        std::cerr << "Fatal error: " << e.what() << std::endl;
        return 1;
    }
    
    std::cout << "Thanks for playing!" << std::endl;
    return 0;
}

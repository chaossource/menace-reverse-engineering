cmake_minimum_required(VERSION 3.15)
project(menace-modern VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Find SDL2 using pkg-config
find_package(PkgConfig REQUIRED)
pkg_check_modules(SDL2 REQUIRED sdl2)
pkg_check_modules(SDL2_IMAGE REQUIRED SDL2_image)
pkg_check_modules(SDL2_MIXER REQUIRED SDL2_mixer)

# Source files
set(SOURCES
    src/main.cpp
    src/game.cpp
    src/renderer.cpp
    src/sprite.cpp
    src/input.cpp
    src/audio.cpp
)

# Headers
set(HEADERS
    src/game.h
    src/renderer.h
    src/sprite.h
    src/input.h
    src/audio.h
    src/types.h
)

# Create executable
add_executable(menace ${SOURCES} ${HEADERS})

# Include directories
target_include_directories(menace PRIVATE
    ${SDL2_INCLUDE_DIRS}
    ${SDL2_IMAGE_INCLUDE_DIRS}
    ${SDL2_MIXER_INCLUDE_DIRS}
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Link libraries
target_link_libraries(menace PRIVATE
    ${SDL2_LIBRARIES}
    ${SDL2_IMAGE_LIBRARIES}
    ${SDL2_MIXER_LIBRARIES}
)

# Compiler warnings
if(MSVC)
    target_compile_options(menace PRIVATE /W4)
else()
    target_compile_options(menace PRIVATE -Wall -Wextra -pedantic)
endif()

# Copy assets to build directory
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/extracted_gfx
     DESTINATION ${CMAKE_BINARY_DIR}/assets)

# Install target
install(TARGETS menace RUNTIME DESTINATION bin)

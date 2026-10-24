#!/bin/bash
# Quick build script for Menace

set -e

echo "================================"
echo "Building Menace Modern Port"
echo "================================"
echo ""

# Check dependencies
echo "Checking dependencies..."
command -v cmake >/dev/null 2>&1 || { echo "Error: cmake not found"; exit 1; }
command -v g++ >/dev/null 2>&1 || { echo "Error: g++ not found"; exit 1; }
command -v pkg-config >/dev/null 2>&1 || { echo "Error: pkg-config not found"; exit 1; }

pkg-config --exists sdl2 || { echo "Error: SDL2 not found"; exit 1; }
pkg-config --exists SDL2_image || { echo "Error: SDL2_image not found"; exit 1; }
pkg-config --exists SDL2_mixer || { echo "Error: SDL2_mixer not found"; exit 1; }

echo "✓ All dependencies found"
echo ""

# Create build directory
mkdir -p build
cd build

# Configure
echo "Configuring with CMake..."
CXX=g++ CC=gcc cmake .. || exit 1
echo ""

# Build
echo "Building..."
make -j$(nproc) || exit 1
echo ""

# Success
echo "================================"
echo "✓ Build successful!"
echo "================================"
echo ""
echo "Executable: $(pwd)/menace"
echo "Size: $(du -h menace | cut -f1)"
echo ""
echo "To run (requires X11/display):"
echo "  ./build/menace"
echo ""

#!/bin/bash
# update.sh - Automated CMake Build Script

# Remove the build directory if it exists
if [ -d "build" ]; then
  rm -rf build
fi

# Remove the bin dir
if [ -d "bin" ]; then
  rm -rf bin
fi

# Recreate the build directory
mkdir build
cd build

# Run CMake and build
cmake ..
make

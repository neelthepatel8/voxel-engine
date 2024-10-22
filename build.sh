#!/bin/bash
# build.sh - Clean and Build

# Create the build directory if it doesn't exist
mkdir -p build
cd build

# Clean the build directory and rebuild
cmake --build . --clean-first

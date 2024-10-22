# Minimum CMake version required
cmake_minimum_required(VERSION 3.10)

# Project name and version
project(VoxelEngine VERSION 1.0)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Output binary location
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Compiler flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -O2")

# Add GLFW as an external dependency
find_package(glfw3 REQUIRED)

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/external/glad/include)
include_directories(${CMAKE_SOURCE_DIR}/external/glm)

# Add Glad library
set(GLAD_SRC ${CMAKE_SOURCE_DIR}/external/glad/src/glad.c)
add_library(glad STATIC ${GLAD_SRC})

# Source files
file(GLOB SOURCES "${CMAKE_SOURCE_DIR}/src/*.cpp")

# Executable target
add_executable(${PROJECT_NAME} ${SOURCES})

# On macOS, link to system frameworks for OpenGL and Cocoa
if(APPLE)
    find_package(OpenGL REQUIRED)
    find_library(COCOA_LIBRARY Cocoa)
    find_library(IOKIT_LIBRARY IOKit)
    find_library(COREVIDEO_LIBRARY CoreVideo)
    target_link_libraries(${PROJECT_NAME} OpenGL::GL ${COCOA_LIBRARY} ${IOKIT_LIBRARY} ${COREVIDEO_LIBRARY})
endif()

# Link libraries (glad, glfw, and system libraries for macOS)
target_link_libraries(${PROJECT_NAME} glad glfw)

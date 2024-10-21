# Compiler
CXX := clang++
CXXFLAGS := -std=c++17 -Wall -Wextra -O2 -framework OpenGL -framework IOKit -framework Cocoa -framework Carbon -L/opt/homebrew/lib -lglfw

# Directories
SRC_DIR := src
INCLUDE_DIR := include
EXTERNAL_DIR := external

# Include Paths
INCLUDES := -I$(INCLUDE_DIR) -I$(EXTERNAL_DIR)/glad/include -I$(EXTERNAL_DIR)/glm -I$(INCLUDE_DIR)/stb_image.h -I$(INCLUDE_DIR)/shader_s.h -I$(INCLUDE_DIR)/glm

# Source and Object Files
SRC := $(wildcard $(SRC_DIR)/*.cpp)
OBJ := $(SRC:$(SRC_DIR)/%.cpp=build/%.o)

GLAD_SRC := $(EXTERNAL_DIR)/glad/src/glad.c
GLAD_OBJ := build/glad.o
OBJ += $(GLAD_OBJ)

# Target
TARGET := bin/my_app

# Build Rules
all: $(TARGET)

# Link Object Files into Executable
$(TARGET): $(OBJ) | bin
	$(CXX) $(CXXFLAGS) $(OBJ) -o $(TARGET) $(LIBS)

# Compile Source Files into Object Files
build/%.o: $(SRC_DIR)/%.cpp | build
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# Compile GLAD
$(GLAD_OBJ): $(GLAD_SRC) | build
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# Create Directories if they don't exist
bin:
	mkdir -p bin

build:
	mkdir -p build

# Clean Build Files
clean:
	rm -rf build/*.o $(TARGET)

# Phony Targets
.PHONY: all clean

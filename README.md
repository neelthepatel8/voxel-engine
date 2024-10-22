# Voxel Project

## Table of Contents

- [Project Description](#project-description)
- [Installation](#installation)
- [Usage](#usage)
- [Directory Structure](#directory-structure)
- [Contributing](#contributing)
- [License](#license)

## Project Description

The Voxel project is a 3D voxel-based engine built using OpenGL. It allows users to render and interact with voxel-based environments, similar to games like Minecraft, but with its own set of tools and features. The project demonstrates modern OpenGL techniques such as camera movement, texture mapping, and lighting.

## Installation

To install the project, clone this repository and follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/voxel-project.git
   cd voxel-project
   ```

2. Install dependencies:
   Ensure you have the following installed:

   - CMake
   - GLFW
   - GLAD
   - OpenGL
   - stb_image

3. Build the project:

   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

4. Run the executable:
   ```bash
   ./bin/VoxelEngine
   ```

## Usage

1. Run the executable:

   ```bash
   ./bin/VoxelEngine
   ```

2. Use the following keyboard and mouse controls:

   - **W/A/S/D**: Move the camera
   - **Mouse movement**: Look around
   - **Scroll**: Zoom in and out

3. For more advanced usage and settings, modify configuration files or adjust parameters in the source code.

## Directory Structure

```plaintext
├── .git/               # Contains git metadata and history.
├── .vscode/            # Visual Studio Code specific settings.
├── CMakeLists.txt      # Project configuration file for CMake.
├── bin/                # Executable binaries for the project.
├── build/              # Contains compiled files and build artifacts.
├── external/           # External dependencies or libraries.
├── include/            # Header files (if applicable).
├── resources/          # Resources used in the project like images, models, etc.
├── src/                # Source code for the project.
├── README.md           # Project documentation (this file).
```

## Contributing

Guidelines for contributing to the project:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes and push them to your fork.
4. Submit a pull request with a detailed description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

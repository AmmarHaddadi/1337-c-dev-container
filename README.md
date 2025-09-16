# 1337 C/C++ Development Container

A comprehensive development container for C and C++ projects at 1337 (42 Schools network). This container comes pre-configured with all the essential tools for C/C++ development, debugging, and code formatting according to 42 School standards.

## 🚀 Features

### Compilers & Build Tools
- **GCC** - GNU Compiler Collection
- **Clang** - Modern C/C++ compiler
- **Make** - Build automation tool
- **CMake** - Cross-platform build system

### Debugging & Analysis
- **GDB** - GNU Debugger for step-by-step debugging
- **Valgrind** - Memory error detection and profiling

### Code Formatting
- **c_formatter_42** - Official 42 School C formatter
- **Python 3.8+** - Required for c_formatter_42

### Development Environment
- **Zsh** - Enhanced shell with Oh My Zsh
- **VS Code C/C++ Extension** - IntelliSense, debugging, and code browsing
- **Git** - Version control system

## 📋 Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## 🛠️ Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com/AmmarHaddadi/1337-c-dev-container.git
   cd 1337-c-dev-container
   ```

2. **Open in VS Code:**
   ```bash
   code .
   ```

3. **Reopen in Container:**
   - Press `F1` or `Ctrl+Shift+P`
   - Type "Dev Containers: Reopen in Container"
   - Select it and wait for the container to build

4. **Start coding!** The container will automatically set up with all tools ready to use.

## 🧪 Testing the Setup

Once the container is running, you can test all the tools:

```bash
# Test compilers
gcc --version
clang --version

# Test build tools
make --version
cmake --version

# Test debugging tools
gdb --version
valgrind --version

# Test Python and formatter
python3 --version
pip3 show c-formatter-42

# Test sample program
cd /workspace/samples
make
./hello
```

## 🎯 Usage Examples

### Compiling with GCC
```bash
gcc -Wall -Wextra -Werror -std=c99 -o program program.c
```

### Compiling with Clang
```bash
clang -Wall -Wextra -Werror -std=c99 -o program program.c
```

### Using c_formatter_42
```bash
# Format a single file
c_formatter_42 < input.c > output.c

# Format in place (be careful!)
c_formatter_42 < program.c > temp.c && mv temp.c program.c
```

### Debugging with GDB
```bash
gcc -g -o program program.c
gdb ./program
```

### Memory checking with Valgrind
```bash
gcc -g -o program program.c
valgrind --leak-check=full ./program
```

### Building with Make
```bash
# Using the sample Makefile
make all
make clean
make re
```

## 📁 Project Structure

```
.
├── .devcontainer/
│   ├── devcontainer.json    # Dev container configuration
│   └── Dockerfile          # Container image definition
├── README.md               # This file
└── LICENSE                 # MIT License
```

## ⚙️ Customization

You can customize the development environment by modifying:

- **`.devcontainer/devcontainer.json`** - VS Code settings, extensions, and container configuration
- **`.devcontainer/Dockerfile`** - Additional tools, packages, or system configuration

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🎓 About 1337 (42 Schools)

This dev container is specifically designed for students at 1337, the Moroccan campus of 42 School network. It includes all the tools and configurations needed for C/C++ projects according to the school's coding standards.

# 🎓 1337 C/C++ Dev Container - Quick Start Guide

Welcome to your 1337 (42 Schools) C/C++ development environment! This container has everything you need to start coding immediately.

## 🚀 Quick Setup (2 minutes)

1. **Prerequisites:**
   - Install [Docker](https://www.docker.com/get-started)
   - Install [VS Code](https://code.visualstudio.com/)
   - Install [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

2. **Open the dev container:**
   ```bash
   git clone https://github.com/AmmarHaddadi/1337-c-dev-container.git
   cd 1337-c-dev-container
   code .
   ```

3. **When VS Code opens:**
   - You'll see a notification: "Reopen in Container"
   - Click "Reopen in Container" (or press F1 → "Dev Containers: Reopen in Container")
   - Wait 2-3 minutes for the container to build

4. **Start coding!**
   - Open `examples/hello_1337.c`
   - Press F5 to debug or Ctrl+Shift+P → "Tasks: Run Task" → "build"

## ✅ What's Included

| Tool | Version | Purpose |
|------|---------|---------|
| GCC | 11.4.0 | C/C++ compiler |
| Clang | 14.0.0 | Alternative C/C++ compiler |
| GDB | 12.1 | Debugger |
| Valgrind | 3.18.1 | Memory error detection |
| Make | 4.3 | Build automation |
| CMake | 3.22 | Cross-platform build system |
| Python | 3.10 | For c_formatter_42 |
| c_formatter_42 | 0.2.8 | 42 School code formatter |
| Zsh | Latest | Enhanced shell |

## 🧪 Test Everything Works

Run the test script:
```bash
./test-setup.sh
```

## 💡 Quick Examples

### Compile and run:
```bash
cd examples
make all
./hello_1337
```

### Debug with GDB:
```bash
gcc -g program.c -o program
gdb ./program
```

### Check memory leaks:
```bash
valgrind --leak-check=full ./program
```

### Format code (42 style):
```bash
c_formatter_42 < program.c > formatted.c
```

## 🎯 Ready for 1337!

Your development environment is now configured for 1337 (42 Schools) projects. Happy coding! 🚀

---
Questions? Check the main [README.md](README.md) for detailed documentation.
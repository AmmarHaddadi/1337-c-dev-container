#!/bin/bash

# Test script for 1337 C/C++ Dev Container
# This script validates that all required tools are installed and working

echo "🚀 Testing 1337 C/C++ Development Container Setup"
echo "=================================================="

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

test_passed=0
test_failed=0

# Function to run a test
run_test() {
    local test_name="$1"
    local test_command="$2"
    
    echo -n "Testing $test_name... "
    
    if eval "$test_command" >/dev/null 2>&1; then
        echo -e "${GREEN}✓ PASSED${NC}"
        ((test_passed++))
    else
        echo -e "${RED}✗ FAILED${NC}"
        ((test_failed++))
    fi
}

# Test compilers
echo -e "\n${YELLOW}📦 Testing Compilers${NC}"
run_test "GCC" "gcc --version"
run_test "Clang" "clang --version"

# Test build tools
echo -e "\n${YELLOW}🔨 Testing Build Tools${NC}"
run_test "Make" "make --version"
run_test "CMake" "cmake --version"

# Test debugging tools
echo -e "\n${YELLOW}🐛 Testing Debugging Tools${NC}"
run_test "GDB" "gdb --version"
run_test "Valgrind" "valgrind --version"

# Test Python and formatter
echo -e "\n${YELLOW}🐍 Testing Python and Formatter${NC}"
run_test "Python3" "python3 --version"
run_test "pip3" "pip3 --version"
run_test "c_formatter_42" "pip3 show c-formatter-42"

# Test shell
echo -e "\n${YELLOW}🐚 Testing Shell${NC}"
run_test "Zsh" "zsh --version"
run_test "Oh My Zsh" "test -d ~/.oh-my-zsh"

# Test with actual compilation
echo -e "\n${YELLOW}⚙️  Testing Compilation${NC}"
cd /tmp
cat > test.c << 'EOF'
#include <stdio.h>
int main(void) {
    printf("Hello, 1337!\n");
    return (0);
}
EOF

run_test "GCC compilation" "gcc -Wall -Wextra -Werror -std=c99 test.c -o test_gcc"
run_test "Clang compilation" "clang -Wall -Wextra -Werror -std=c99 test.c -o test_clang"
run_test "GCC binary execution" "./test_gcc"
run_test "Clang binary execution" "./test_clang"

# Clean up
rm -f test.c test_gcc test_clang

# Test c_formatter_42
echo -e "\n${YELLOW}🎨 Testing Code Formatter${NC}"
cat > test_format.c << 'EOF'
#include<stdio.h>
int main(void){printf("Hello");return(0);}
EOF

run_test "c_formatter_42 formatting" "c_formatter_42 < test_format.c > test_formatted.c && test -s test_formatted.c"
rm -f test_format.c test_formatted.c

# Summary
echo -e "\n${YELLOW}📊 Test Summary${NC}"
echo "=================================================="
echo -e "Tests passed: ${GREEN}$test_passed${NC}"
echo -e "Tests failed: ${RED}$test_failed${NC}"

if [ $test_failed -eq 0 ]; then
    echo -e "\n${GREEN}🎉 All tests passed! Your 1337 C/C++ dev container is ready!${NC}"
    exit 0
else
    echo -e "\n${RED}❌ Some tests failed. Please check the setup.${NC}"
    exit 1
fi
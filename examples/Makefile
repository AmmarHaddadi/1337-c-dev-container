# Makefile for 1337 C projects
# Compatible with 42 School standards

# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99 -g

# Program names
HELLO = hello_1337
MEMORY = memory_demo

# Source files
HELLO_SRC = hello_1337.c
MEMORY_SRC = memory_demo.c

# Default target
all: $(HELLO) $(MEMORY)

# Build hello program
$(HELLO): $(HELLO_SRC)
	$(CC) $(CFLAGS) -o $(HELLO) $(HELLO_SRC)

# Build memory demo
$(MEMORY): $(MEMORY_SRC)
	$(CC) $(CFLAGS) -o $(MEMORY) $(MEMORY_SRC)

# Clean executables
clean:
	rm -f $(HELLO) $(MEMORY)

# Rebuild everything
re: clean all

# Run programs
run-hello: $(HELLO)
	./$(HELLO)

run-memory: $(MEMORY)
	./$(MEMORY)

# Run with valgrind
valgrind-hello: $(HELLO)
	valgrind --leak-check=full --show-leak-kinds=all ./$(HELLO)

valgrind-memory: $(MEMORY)
	valgrind --leak-check=full --show-leak-kinds=all ./$(MEMORY)

# Format code with c_formatter_42
format:
	c_formatter_42 < $(HELLO_SRC) > $(HELLO_SRC).tmp && mv $(HELLO_SRC).tmp $(HELLO_SRC)
	c_formatter_42 < $(MEMORY_SRC) > $(MEMORY_SRC).tmp && mv $(MEMORY_SRC).tmp $(MEMORY_SRC)

# Phony targets
.PHONY: all clean re run-hello run-memory valgrind-hello valgrind-memory format
# Use Ubuntu 22.04 as base image for better Python 3.8+ support
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

# Install system dependencies and tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        # Core build tools
        build-essential \
        gcc \
        clang \
        make \
        cmake \
        # Debugging and analysis tools
        gdb \
        valgrind \
        # Python for c_formatter_42
        python3 \
        python3-pip \
        python3-dev \
        # Version control and utilities
        git \
        curl \
        wget \
        vim \
        nano \
        # Zsh shell
        zsh \
        # Additional useful tools
        pkg-config \
        libc6-dev \
        manpages-dev \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Install c_formatter_42 using pip3
RUN pip3 install c-formatter-42

# Set up zsh for the vscode user
USER vscode
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

# Switch back to root to complete setup
USER root

# Create a sample C program for testing
RUN mkdir -p /workspace/samples
COPY <<EOF /workspace/samples/hello.c
#include <stdio.h>

int main(void)
{
    printf("Hello, 1337 (42 Schools)!\n");
    return (0);
}
EOF

COPY <<EOF /workspace/samples/Makefile
# Simple Makefile for testing
CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99
NAME = hello

all: \$(NAME)

\$(NAME): hello.c
	\$(CC) \$(CFLAGS) -o \$(NAME) hello.c

clean:
	rm -f \$(NAME)

re: clean all

.PHONY: all clean re
EOF

# Set proper ownership
RUN chown -R vscode:vscode /workspace/samples

# Set the default shell to zsh
ENV SHELL=/bin/zsh
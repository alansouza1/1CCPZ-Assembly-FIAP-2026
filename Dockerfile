FROM ubuntu:latest

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install toolchain
RUN apt-get update && apt-get install -y \
    nasm \
    gcc \
    make \
    gdb \
    binutils \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Command to keep container running
CMD ["tail", "-f", "/dev/null"]

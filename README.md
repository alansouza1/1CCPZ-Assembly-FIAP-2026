# 1CCPZ-Assembly-FIAP-2026
Assembly Exercises for FIAP 2026.

## Structure
- `exercises/`: Weekly exercises and chapter studies.
- `projects/`: Larger assignments.
- `docker/`: Toolchain configuration (nasm, gcc, gdb).

## Prerequisites
- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/)
- Node.js (for npm orchestration scripts)

## Getting Started
1. **Build the environment**:
   ```bash
   npm run docker:build
   ```

2. **Start the container**:
   ```bash
   npm run docker:up
   ```

3. **Access the shell**:
   ```bash
   npm run docker:shell
   ```

4. **Compile and run an exercise (inside the container)**:
   ```bash
   cd exercises/week-1/01-hello-world
   make
   ./main
   ```

## Useful Commands
- `npm run docker:shell`: Open a bash session inside the container.
- `make`: Inside an exercise folder, compiles and links.
- `make clean`: Removes objects and binaries.

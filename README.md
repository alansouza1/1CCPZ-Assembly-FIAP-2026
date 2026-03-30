# 1CCPZ-Assembly-FIAP-2026
Assembly Exercises for FIAP 2026.

## Structure
- `exercises/`: Weekly exercises and chapter studies.
- `projects/`: Larger assignments.
- `Dockerfile`: Toolchain configuration (nasm, gcc, gdb, etc.).
- `docker-compose.yml`: Environment orchestration.

## Prerequisites
- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/)

## Getting Started
1. **Build the environment**:
   ```bash
   docker compose build
   ```

2. **Start the container**:
   ```bash
   docker compose up -d
   ```

3. **Access the shell**:
   ```bash
   docker exec -it asm-dev bash
   ```

4. **Compile and run an exercise (inside the container)**:
   ```bash
   cd exercises/week-0-hello-world
   make
   ./main
   ```

## Useful Commands
- `docker exec -it asm-dev bash`: Open a bash session inside the container.
- `make`: Inside an exercise folder, compiles and links.
- `make clean`: Removes objects and binaries.

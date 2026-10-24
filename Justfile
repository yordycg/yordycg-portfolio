ENGINE := "podman"

default:
  @just --list

# Servidor de desarrollo. Detecta escritorio vs. SSH/headless. Ver scripts/dev.sh
dev:
  @bash scripts/dev.sh

prod:
  {{ENGINE}} compose up --build

lint:
  npx -y @biomejs/biome lint src/

format:
  npx -y @biomejs/biome format --write src/

ENGINE := "podman"

default:
  @just --list

dev:
  npx -y browser-sync start --server 'src' --files 'src' --no-notify --no-ghost-mode

prod:
  {{ENGINE}} compose up --build

lint:
  npx -y @biomejs/biome lint src/

format:
  npx -y @biomejs/biome format --write src/

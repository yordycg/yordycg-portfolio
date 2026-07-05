# Justfile for yordycg-portfolio

# Levanta el entorno de desarrollo
dev:
  podman compose up

# Ejecuta el linter (Biome) via npx
lint:
  npx @biomejs/biome lint src/

# Formatea el código (Biome) via npx
format:
  npx @biomejs/biome format --write src/

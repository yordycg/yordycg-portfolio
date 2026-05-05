# Justfile for yordycg-portfolio
set shell := ["powershell.exe", "-NoProfile", "-Command"]

# Levanta el entorno de desarrollo
dev:
    docker-compose up

# Ejecuta el linter (Biome) via npx
lint:
    npx @biomejs/biome lint src/

# Formatea el código (Biome) via npx
format:
    npx @biomejs/biome format --write src/

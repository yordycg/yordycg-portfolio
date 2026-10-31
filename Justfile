ENGINE := "podman"

default:
  @just --list

# Servidor de desarrollo. Detecta escritorio vs. SSH/headless. Ver scripts/dev.sh
dev:
  @bash scripts/dev.sh

prod:
  {{ENGINE}} compose up --build

lint:
  npm run lint

format:
  npm run format

check:
  npm run check

# Regenera la og:image (1200x630). Ver scripts/og.sh
og:
  npm run og

# Regenera el CV PDF desde docs/cv/index.html
cv:
  npm run cv

# Regenera los screenshots del README
screenshots:
  npm run screenshots

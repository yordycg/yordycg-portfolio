#!/usr/bin/env bash
# Genera el hero `blueprint_hero_bg.webp` desde la fuente vectorial `hero.svg`.
# Requiere: rsvg-convert (librsvg) y ffmpeg con libwebp.
#
# Uso: ./scripts/hero.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT="src/assets/img/blueprint_hero_bg.webp"
TMP="$(mktemp --suffix=.png)"
trap 'rm -f "$TMP"' EXIT

rsvg-convert -w 1920 -h 1080 "$SCRIPT_DIR/hero.svg" -o "$TMP"
ffmpeg -hide_banner -loglevel error -i "$TMP" -c:v libwebp -q:v 85 "$OUT"

echo "Generado: $OUT"

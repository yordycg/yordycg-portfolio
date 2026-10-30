#!/usr/bin/env bash
# Genera la og:image (1200x630) para compartir en redes sociales.
# Estética "Mono Dark" alineada con el sitio.
# Requiere: npm install (sharp-cli queda fijado en package-lock.json).
#
# Uso: ./scripts/og.sh
set -euo pipefail

OUT="src/assets/img/og-image.png"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$(dirname "$OUT")"

cat >"$TMP/og.svg" <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630">
  <defs>
    <pattern id="grid" width="80" height="80" patternUnits="userSpaceOnUse">
      <path d="M 80 0 L 0 0 0 80" fill="none" stroke="#262626" stroke-opacity="0.35" stroke-width="1" />
    </pattern>
  </defs>

  <rect width="1200" height="630" fill="#131313" />
  <rect width="1200" height="630" fill="url(#grid)" />
  <rect width="1200" height="1" fill="#9fcaff" fill-opacity="0.6" />

  <text x="80" y="72" fill="#9fcaff" font-family="DejaVu Sans Mono, monospace" font-size="22" font-weight="700" letter-spacing="0.5">YORDY CARMONA // PORTFOLIO</text>
  <text x="1120" y="72" fill="#89919e" font-family="DejaVu Sans Mono, monospace" font-size="22" text-anchor="end">01/01</text>

  <text x="600" y="310" fill="#e5e2e1" font-family="DejaVu Sans Mono, monospace" font-size="120" font-weight="700" text-anchor="middle" letter-spacing="-2">Yordy Carmona</text>
  <rect x="420" y="360" width="360" height="4" fill="#0099ff" />

  <text x="600" y="420" fill="#bfc7d5" font-family="DejaVu Sans Mono, monospace" font-size="32" text-anchor="middle" letter-spacing="1">DESARROLLADOR BACKEND EN FORMACIÓN</text>
  <text x="600" y="466" fill="#89919e" font-family="DejaVu Sans Mono, monospace" font-size="24" text-anchor="middle" letter-spacing="0.5">C# · .NET · SQL SERVER · PYTHON · DJANGO</text>

  <circle cx="86" cy="568" r="6" fill="#38ce47" />
  <text x="104" y="575" fill="#bfc7d5" font-family="DejaVu Sans Mono, monospace" font-size="22">DISPONIBLE · REMOTO</text>
  <text x="1120" y="575" fill="#89919e" font-family="DejaVu Sans Mono, monospace" font-size="22" text-anchor="end">GITHUB · LINKEDIN</text>
</svg>
SVG

npx --no-install sharp-cli -i "$TMP/og.svg" -o "$OUT"

echo "Generado: $OUT"

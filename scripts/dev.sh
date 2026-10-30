#!/usr/bin/env bash
# Servidor de desarrollo con live reload.
# Detecta el entorno: en escritorio abre el navegador; por SSH o en un Linux sin
# servidor gráfico queda en 127.0.0.1, sin UI y sin abrir nada.
#
# Uso: ./scripts/dev.sh                   (detección automática)
#      BS_MODE=desktop ./scripts/dev.sh   (forzar navegador local)
#      BS_MODE=headless ./scripts/dev.sh  (forzar loopback)
#      BS_PORT=8080 ./scripts/dev.sh      (otro puerto)
#
# Requiere: npm install (browser-sync queda fijado en package-lock.json).
set -euo pipefail

PORT="${BS_PORT:-3000}"
MODE="${BS_MODE:-auto}"

case "$MODE" in
  auto | desktop | headless) ;;
  *)
    printf 'BS_MODE inválido: %s (usa auto|desktop|headless)\n' "$MODE" >&2
    exit 1
    ;;
esac

if [ "$MODE" = "auto" ]; then
  MODE="desktop"
  if [ -n "${SSH_CONNECTION:-}" ]; then
    MODE="headless"
  elif [ "$(uname -s)" = "Linux" ] && [ -z "${DISPLAY:-}${WAYLAND_DISPLAY:-}" ]; then
    MODE="headless"
  fi
fi

flags=(--server src --files src --no-notify --no-ghost-mode --port "$PORT")

if [ "$MODE" = "headless" ]; then
  flags+=(--no-open --no-ui --listen 127.0.0.1)
  printf 'browser-sync (%s) → http://127.0.0.1:%s\n' "$MODE" "$PORT"
  printf 'Túnel SSH: ssh -N -L %s:127.0.0.1:%s usuario@vps\n' "$PORT" "$PORT"
else
  printf 'browser-sync (%s) → abriendo el navegador en el puerto %s\n' "$MODE" "$PORT"
fi

exec npx --no-install browser-sync start "${flags[@]}"

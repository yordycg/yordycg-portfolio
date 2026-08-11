#!/usr/bin/env bash
# Genera los placeholders .webp (estética "Mono Dark") para la grilla de proyectos.
# Rediseño v2: mock de ventana/app con chrome, título y stack equilibrados.
# Requiere: ffmpeg con libwebp y libfreetype.
#
# Uso: ./scripts/placeholder.sh
set -euo pipefail

FONT="/home/yordycg/.local/share/fonts/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Bold.ttf"
OUT_DIR="src/assets/img"
W=1600
H=900
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$OUT_DIR"

gen() {
  local out="$1" index="$2" total="$3" title_a="$4" title_b="$5" stack="$6"
  printf '%s\n%s\n' "$title_a" "$title_b" >"$TMP/title.txt"
  printf '%s\n' "$stack" >"$TMP/stack.txt"
  printf 'ESTUDIO %s / %s\n' "$index" "$total" >"$TMP/label.txt"

  ffmpeg -y -hide_banner -loglevel error \
    -f lavfi -i "color=c=0x131313:s=${W}x${H}:d=1" \
    -vf "drawgrid=width=80:height=80:thickness=1:color=0x262626@0.45, \
drawbox=x=0:y=0:w=${W}:h=1:color=0x9fcaff@0.6, \
drawtext=fontfile='${FONT}':text=YordyCG\\/\\/PORTFOLIO:fontsize=22:fontcolor=0x9fcaff:x=80:y=72, \
drawtext=fontfile='${FONT}':textfile='${TMP}/label.txt':fontsize=22:fontcolor=0x89919e:x=w-tw-80:y=72, \
drawtext=fontfile='${FONT}':text='${index}':fontsize=300:fontcolor=0xffffff@0.03:x=w-tw-70:y=430, \
drawbox=x=230:y=250:w=1140:h=440:color=0x1f1f1f@0.95:t=max(1140\,440), \
drawbox=x=230:y=250:w=1140:h=64:color=0x262626:t=max(1140\,64), \
drawbox=x=262:y=278:w=14:h=14:color=0x3a3a3a:t=max(14\,14), \
drawbox=x=286:y=278:w=14:h=14:color=0x3a3a3a:t=max(14\,14), \
drawbox=x=310:y=278:w=14:h=14:color=0x3a3a3a:t=max(14\,14), \
drawbox=x=380:y=262:w=1:h=30:color=0x89919e@0.35:t=max(1\,30), \
drawtext=fontfile='${FONT}':text='localhost/app':fontsize=24:fontcolor=0x89919e:x=420:y=272, \
drawbox=x=230:y=250:w=6:h=440:color=0x9fcaff@0.7:t=max(6\,440), \
drawtext=fontfile='${FONT}':text='PROYECTO ${index}':fontsize=22:fontcolor=0x9fcaff:x=300:y=352, \
drawtext=fontfile='${FONT}':textfile='${TMP}/title.txt':fontsize=88:fontcolor=0xe5e2e1:x=300:y=414:line_spacing=10, \
drawtext=fontfile='${FONT}':textfile='${TMP}/stack.txt':fontsize=30:fontcolor=0xbfc7d5:x=300:y=$((H - 230)), \
drawtext=fontfile='${FONT}':text=PREVIEW:fontsize=20:fontcolor=0x89919e:x=w-tw-80:y=$((H - 80))" \
    -frames:v 1 -c:v libwebp -q:v 85 "$OUT_DIR/$out"

  echo "Generado: $OUT_DIR/$out"
}

gen "project-2.webp" 01 02 "SISTEMA" "VETERINARIO" "C#  ·  EF CORE  ·  SQL SERVER  ·  DOCKER  ·  BOOTSTRAP 5"
gen "project-3.webp" 02 02 "ARRIENDO" "DE CANCHAS" "PYTHON  ·  DJANGO  ·  MYSQL  ·  DOCKER  ·  BOOTSTRAP 5"
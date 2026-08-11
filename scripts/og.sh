#!/usr/bin/env bash
# Genera la og:image (1200x630) para compartir en redes sociales.
# Estética "Mono Dark" alineada con el sitio.
# Requiere: ffmpeg con libfreetype.
#
# Uso: ./scripts/og.sh
set -euo pipefail

FONT="/home/yordycg/.local/share/fonts/JetBrainsMono/JetBrainsMonoNLNerdFontMono-Bold.ttf"
OUT="src/assets/img/og-image.png"
W=1200
H=630
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$(dirname "$OUT")"
printf 'ESTUDIANTE INGENIERÍA EN INFORMÁTICA' >"$TMP/tagline.txt"
printf 'GITHUB · LINKEDIN · X' >"$TMP/social.txt"

ffmpeg -y -hide_banner -loglevel error \
  -f lavfi -i "color=c=0x131313:s=${W}x${H}:d=1" \
  -vf "drawgrid=width=80:height=80:thickness=1:color=0x262626@0.35, \
drawbox=x=0:y=0:w=${W}:h=1:color=0x9fcaff@0.6, \
drawtext=fontfile='${FONT}':text=YordyCG\\/\\/PORTFOLIO:fontsize=22:fontcolor=0x9fcaff:x=80:y=72, \
drawtext=fontfile='${FONT}':text='01/01':fontsize=22:fontcolor=0x89919e:x=w-tw-80:y=72, \
drawtext=fontfile='${FONT}':text=YordyCG:fontsize=140:fontcolor=0xe5e2e1:x=(w-text_w)/2:y=210, \
drawbox=x=455:y=352:w=290:h=4:color=0x0099ff, \
drawtext=fontfile='${FONT}':textfile='${TMP}/tagline.txt':fontsize=34:fontcolor=0xbfc7d5:x=(w-text_w)/2:y=392, \
drawtext=fontfile='${FONT}':textfile='${TMP}/social.txt':fontsize=22:fontcolor=0x89919e:x=(w-text_w)/2:y=$((H - 96))" \
  -frames:v 1 \
  "$OUT"

echo "Generado: $OUT"
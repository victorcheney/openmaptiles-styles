#!/usr/bin/env bash
set -xeuo pipefail

FONTS_DIR="target/fonts"
declare -A FONTS=( \
                    ["Klokantech Noto Sans Regular"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans Regular" \
                    ["Klokantech Noto Sans CJK Regular"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans CJK Regular" \
                    ["Klokantech Noto Sans Italic"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans Italic" \
                    ["Klokantech Noto Sans Bold"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans Bold" \
                    ["Klokantech Noto Sans CJK Bold"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans CJK Bold" \
                 )
mkdir -p "${FONTS_DIR}"

for FONT in "${!FONTS[@]}"; do
  cp -r "${FONTS[$FONT]}" "${FONTS_DIR}/${FONT}"
done

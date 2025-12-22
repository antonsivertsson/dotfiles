#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

PROGRAM_TITLE=$(aerospace list-windows --focused --format "%{app-name}")

sketchybar --add item title center --set title label="$PROGRAM_TITLE"

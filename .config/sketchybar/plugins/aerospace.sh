#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

FOCUSED=$(aerospace list-workspaces --focused)

if [ "$1" = "$FOCUSED" ]; then
  sketchybar --animate tanh 15 --set "space.$1" background.color=$ITEM_BG_COLOR
else
  sketchybar --animate tanh 15 --set "space.$1" background.color=0x00000000
fi

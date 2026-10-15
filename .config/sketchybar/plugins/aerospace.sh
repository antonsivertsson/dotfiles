#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

FOCUSED=$(aerospace list-workspaces --focused)

if [ "$1" = "$FOCUSED" ]; then
  sketchybar --set "space.$1" icon.color=$ICON_COLOR
else
  sketchybar --set "space.$1" icon.color=$ITEM_INACTIVE_COLOR
fi

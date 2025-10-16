#!/usr/bin/env bash

# List your wallpapers
WALLPAPERS=(
    "$HOME/Pictures/wallpapers/nebula.jpg"
    "$HOME/Pictures/wallpapers/nebula_2.jpg"
    "$HOME/Pictures/wallpapers/nebula_3.jpg"
)

# Remember which wallpaper was last used
INDEX_FILE="$HOME/.cache/current_wallpaper_index"

if [ -f "$INDEX_FILE" ]; then
    INDEX=$(cat "$INDEX_FILE")
else
    INDEX=1
fi

# Compute next index
INDEX=$(( (INDEX + 1) % ${#WALLPAPERS[@]} ))
FILE="${WALLPAPERS[$INDEX]}"
echo "$INDEX" > "$INDEX_FILE"

# Preload and apply to your monitors
hyprctl hyprpaper preload "$FILE"
hyprctl hyprpaper wallpaper "eDP-1,$FILE"
hyprctl hyprpaper wallpaper "HDMI-A-1,$FILE"

echo "Wallpaper set to: $FILE"

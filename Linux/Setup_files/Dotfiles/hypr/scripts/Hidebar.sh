!/bin/bash


# This is for Hyprpanel 
# Got it using this command : `ps -eo pid,cmd | grep -E "gjs|ags|panel"` find a another way to do it
# it give the name of the process that run the panel

# Uncomment if you have Hyprpanel
# if ! pgrep -af "dmFyIF-ags.js" > /dev/null; then
#     hyprpanel &
# else
#     pkill -f "dmFyIF-ags.js"
# fi

# This is for Caelestia
FILE="$HOME/.config/caelestia/shell.json"
DIR=$(dirname "$FILE")
TMP=$(mktemp "$DIR/tmp.XXXXXX")

jq '.bar.persistent = (.bar.persistent | not)' "$FILE" > "$TMP" && mv "$TMP" "$FILE"

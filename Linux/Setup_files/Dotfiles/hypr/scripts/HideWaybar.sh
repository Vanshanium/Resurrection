#!/bin/bash


# Got it using this command : `ps -eo pid,cmd | grep -E "gjs|ags|panel"` find a another way to do it
# it give the name of the process that run the panel

if ! pgrep -af "dmFyIF-ags.js" > /dev/null; then
    hyprpanel &
else
    pkill -f "dmFyIF-ags.js"
fi
#!/bin/bash

DEVICE="asuf1203:00-2808:0217-touchpad"
STATE_FILE="/tmp/touchpad_state"

# Initialize if not exists
if [ ! -f "$STATE_FILE" ]; then
    echo "on" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [ "$STATE" = "on" ]; then
    hyprctl keyword "device[$DEVICE]:enabled" false
    echo "off" > "$STATE_FILE"
else
    hyprctl keyword "device[$DEVICE]:enabled" true
    echo "on" > "$STATE_FILE"
fi

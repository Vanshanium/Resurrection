#!/bin/bash

IMAGE_FILE="/tmp/image_to_text.png"

# Capture a selected screen area
grim -g "$(slurp)" $IMAGE_FILE

# Run OCR with optional language support
sleep 1
LANGUAGE=${1:-eng}  # Default to English

tesseract "$IMAGE_FILE" stdout -l "$LANGUAGE" | xclip -selection clipboard

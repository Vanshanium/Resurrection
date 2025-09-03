#!/bin/bash
source ../Variables.sh
clear

write_green "Updating the Dotfiles from the Current Dotfiles"

rm -r ./Dotfiles/* 

packages=(gtk-3.0 gtk-4.0 hypr rofi fastfetch kitty waybar nautilus)

# Example usage:
for package in "${packages[@]}"; do
    write_red "Copying $package"
    cp -r ~/.config/$package/ ./Dotfiles/$package/
done

write_green "Dotfiles Updated"
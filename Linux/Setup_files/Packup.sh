#!/bin/bash
source ../Variables.sh
clear

write_green "Updating the Dotfiles from the Current Dotfiles"

rm -r ./Dotfiles/* 

packages=(gtk-3.0 gtk-4.0 hypr rofi fastfetch kitty waybar nautilus hyprpanel)

# Example usage:
for package in "${packages[@]}"; do
    write_red "Copying $package"
    cp -r ~/.config/$package/ ./Dotfiles/$package/
done

write_green "Dotfiles Updated"
sleep 1
clear

write_green "Updating the .zshrc file"
rm ./.zshrc
cp ~/.zshrc ./.zshrc
write_green ".zshrc Updated"
sleep 1
clear

#TODO Write a Grub and Get the Grub

write_green "Taking a Package Screenshot"
sudo pacman -Q > Packages_Screenshot.txt
sleep 1
clear

write_green "Packing up Custom Packages"
rm -r ./Custom_Packages/*
cp -r ~/.local/bin/* ./Custom_Packages/
write_green "Custom Packages Packed"
sleep 1
clear

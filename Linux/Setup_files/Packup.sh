#!/bin/bash
source ../Variables.sh
clear

write_green "Updating the Dotfiles from the Current Dotfiles"

rm -r ./Dotfiles/* 

packages=(gtk-3.0 gtk-4.0 blender hypr rofi fastfetch kitty waybar nautilus hyprpanel)

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

write_green "Packing up Local/Custom Packages"

rm -r ./Custom_Packages/*

mkdir ./Custom_Packages/bin/
mkdir ./Custom_Packages/Desktop_Entries/

cp -r ~/.local/bin/* ./Custom_Packages/bin/
cp -r ~/.local/share/applications/* ./Custom_Packages/Desktop_Entries/

write_green "Custom Packages Packed"
sleep 1
clear


write_green "Copying the Zshrc and Pluggins"
rm ./.zshrc
cp ~/.zshrc ./
write_green "Zshrc Packed"
sleep 1
clear

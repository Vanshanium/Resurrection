source ./Variables.sh

# Set Vivaldi as the default web browser
write_red "Setting Vivaldi as the default web browser..."
xdg-settings set default-web-browser vivaldi-stable.desktop
xdg-mime default vivaldi-stable.desktop x-scheme-handler/http
xdg-mime default vivaldi-stable.desktop x-scheme-handler/https
write_green "Default web browser set to Vivaldi! Press [Enter] key to continue..."
read
clear

#[.......Dot Configs and Dotfiles Setup.......]
write_red "Setting up Dot Configs and Dotfiles..."
cp ./Setup_files/Dotfiles/* ~/.config/



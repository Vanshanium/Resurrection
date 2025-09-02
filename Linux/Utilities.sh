source ./Variables.sh

# Module to install utilities
if [[ $OS_NAME =~ Arch ]]; then

    Install zsh
    Install htop
    Install sl
    Install curl
    Install transmission-gtk
    Install imagemagick # This is for image convert!

    Install obsidian
    Install fastfetch
    Install rofi
    Install nautilus
    Install megacmd                 # Setup for Mega TODO
    Install iwd                     # For WiFi management   
    Install spotify-launcher
    Install grim                    # For screenshots
    Install slurp                   # For screenshots
    Install wl-clipboard            # For clipboard management
    Install xclip                   # For clipboard management
    Install tesseract               # For OCR Hin and Eng 

    Install_yay visual-studio-code-bin
    Install_yay microsoft-edge-stable-bin
    Install_yay figma-linux-bin

    Install nvidia 
    Install nvidia-utils

    Install nodejs npm

    Install_flatpak org.videolan.VLC
    Install_flatpak com.discordapp.Discord

else

    Install zsh
    Install htop
    Install sl
    Install curl
    Install transmission-gtk
    Install g++
    Install gdb
    Install cmake 
    Install kitty
    Install make


    Install_snap whatsapp-linux-desktop
    Install_snap figma-linux

    Install_flatpak org.videolan.VLC
    Install_flatpak com.discordapp.Discord

fi


cp ./Setup_files/todo ~/.local/bin/
echo -e "\e[36mtodo \e[0m has been installed!"


source ./Variables.sh

# Module to install utilities
if [[ $OS_NAME =~ Arch ]]; then

    Install htop
    Install sl
    Install curl
    Install transmission-gtk
    Install imagemagick # This is for image convert!

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

    Install_flatpak org.videolan.VLC

else
    Install_Command="sudo apt install -y "
fi


cp ./Setup_files/todo ~/.local/bin/
echo -e "\e[36mtodo \e[0m has been installed!"


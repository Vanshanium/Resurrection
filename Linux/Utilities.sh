source ./Variables.sh

# Module to install utilities
if [[ $OS_NAME =~ Arch ]]; then

    Install htop
    Install sl
    Install curl
    Install transmission-gtk
    Install vlc
    Install imagemagick # This is for image convert!

    Install fastfetch
    Install rofi
    Install thunar 
    Install megacmd                 # Setup for Mega TODO
    Install iwd
    Install spotify-launcher

    Install_yay visual-studio-code-bin
    Install_yay microsoft-edge-stable-bin
    Install_yay figma-linux-bin

else
    Install_Command="sudo apt install -y "
fi
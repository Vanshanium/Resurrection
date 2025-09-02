#!/bin/bash

OS_NAME=$(cat /etc/os-release | grep -w NAME | cut -d '=' -f2 | tr -d '"')

# [......Installation Machenism.......]

Install_Command="sudo apt install -y "


if [[ $OS_NAME =~ Arch ]];
then
    # Make a install command. 
    Install(){

        if pacman -Q $1 &>/dev/null; then
            echo -e "\e[36m$1 \e[0m is already Installed!"
        else 
            echo -e "\e[31mInstalling $1 \e[0m"
            sudo pacman -S $1
            echo -e "\e[36m$1 \e[0m has been installed!"
        fi
    }

    # Making the secondary Installer 
    if ! pacman -Q yay &>/dev/null; then

        echo "Installing the Secondary Installer : Yay"
        read -p "Press [Enter] key to continue..."

        Install git
        Install base-devel

        git clone https://aur.archlinux.org/yay.git
        cd yay 
        makepkg -si
        cd ..
        rm -rf yay
        echo "Yay is now installed!"

    fi

    Install_yay(){
        
        if pacman -Q $1 &>/dev/null; then
            echo -e "\e[36m$1 \e[0m is already Installed!"
        else 
            echo -e "\e[31mInstalling $1 \e[0m"
            yay -S $1
            echo -e "\e[36m$1 \e[0m has been installed!"
        fi

    }

    #Installing Flatpak 
    Install flatpak

    Install_flatpak(){

        if flatpak list --app | grep -qw "$1"; then
            echo -e "\e[36m$1 \e[0m is already Installed!"
        else
            echo -e "\e[31mInstalling $1 \e[0m"
            flatpak install -y flathub "$1"
            echo -e "\e[36m$1 \e[0m has been installed!"
        fi

    }
    

elif [[ $OS_NAME =~ Ubuntu ]]; then
    Install(){
        if dpkg -s $1 &>/dev/null; then # This Logic is not working!
            echo -e "\e[36m$1 \e[0m is already Installed!"
        else
            echo -e "\e[31mInstalling $1 \e[0m"
            sudo apt install $1
            echo -e "\e[36m$1 \e[0m has been installed!"
        fi
    }

    Install_snap(){
        if dpkg -s $1 &>/dev/null; then # This logic is not working Fix this.
            echo -e "\e[36m$1 \e[0m is already Installed!"
        else
            echo -e "\e[31mInstalling $1 \e[0m"
            snap install $1
            echo -e "\e[36m$1 \e[0m has been installed!"
        fi
    }

    Install flatpak
    
    Install_flatpak(){

        if flatpak list --app | grep -qw "$1"; then
            echo -e "\e[36m$1 \e[0m is already Installed!"
        else
            echo -e "\e[31mInstalling $1 \e[0m"
            flatpak install -y flathub "$1"
            echo -e "\e[36m$1 \e[0m has been installed!"
        fi

    }

fi


write_red(){
    echo -e "\e[31m$1\e[0m"
}

write_green(){
    echo -e "\e[32m$1\e[0m"
}

# Complete this!!! I have a exam tomorrow !!!!!
# I fuck up my exam due to this!

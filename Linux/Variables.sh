#!/bin/bash

OS_NAME=$(cat /etc/os-release | grep -w NAME | cut -d '=' -f2 | tr -d '"')

# [......Installation Machenism.......]

Install_Command="sudo apt install -y "

if [[ $OS_NAME =~ Arch ]];
then
    Install(){

        if pacman -Q $1 &>/dev/null; then
            echo "$1 is already Installed!"
        else 
            sudo pacman -S $1
        fi
    }

elif [[ $OS_NAME =~ Ubuntu ]]; then
    Install(){
        if dpkg -s $1 &>/dev/null; then
            echo "It is already Installed!"
        else
            sudo apt install -y $1
        fi
    }
fi



echo "Downloading Utilies....."

#I am making Everything Automated 

sudo apt update
sudo apt upgrade 

#Neofetch
sudo apt install neofetch 
sudo apt install htop
sudo apt install sl
sudo apt install curl
sudo apt install transmission
sudo apt install vlc
sudo apt install git
sudo apt install xclip



# sudo apt install for the matrix one!!!
neofetch

clear


# Installing Chrome 

echo "Downloading Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "Installing Google Chrome..."
sudo apt install -y ./google-chrome-stable_current_amd64.deb


# Clean up the downloaded .deb file
echo "Cleaning up..."
rm google-chrome-stable_current_amd64.deb

clear

#Importing bashrc   


#Setting Up MEGA


#Setting Up GIT


#Setting Up VIM/CODE

echo "Downloading VSCODE"

sudo apt install snap # Seeing if the Snap is installed or not (Fail safe)

sudo snap install --classic code 

clear

# Installing C++ 

sudo apt install build-essential # This will install all the packages below

sudo apt install g++
sudo apt install gdb
sudo apt install cmake 
sudo apt install make



#Installing You guessed it!!!!

echo "Installing Whatsapp"

sudo snap install whatsapp-linux-desktop

echo "WhatsApp is done"

clear

# Installing Figma 

echo "Next UP our favourite FIGMA!!!!!!!!!!!!!!!!!"

sudo snap install figma-linux

clear


# Complete this!!! I have a exam tomorrow !!!!!
# I fuck up my exam due to this!
echo ""
sudo snap install telegram-desktop 
clear


# This one as well Install the bashrc and the inputrc

#!/bin/bash

# Install Microsoft Edge
# Find a Method!!!!

#Downloading Python.... for fastest Deployment

# sudo apt install python 





# Installation of the cursor - 

echo "Customizing the damn Cursor........."

wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Ice.tar.xz

tar -xvf Bibata-Modern-Ice.tar.xz 

sudo mv ./Bibata-Modern-Ice /usr/share/icons/

rm ./Bibata* 

gsettings set org.gnome.desktop.interface cursor-size 48

gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"

gnome-shell --replace &


# Customizing the GRUB 

echo "Sustuumize the Grub from the startup"

git clone https://github.com/vinceliuice/Elegant-grub2-themes.git 

sudo ./Elegant-grub2-themes/install.sh 

sudo rm -r ./Elegent*

ehco "The GRUB is done moving to the GITHUB"

clear

# Setting Up the GITHUB 

echo "Setting up GitHub!!!!!!................"

ssh-keygen -t ed25519 -C "vansh.singh8272@gmail.com" -f ~/.ssh/Github

echo "Past the Generated Key in the Github!!!!"

cat ~/.ssh/Github.pub 

echo "It is Copied to the clipboard!!!"

cat ~/.ssh/Github.pub | xclip -selection clipboard

xdg-open "https://github.com/settings/ssh/new"

ssh -T git@github.com

clear

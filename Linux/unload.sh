source ./Variables.sh


#[.........Utillies Installation.........]
write_red "Installing Utilities... \n"
chmod +x ./Utilities.sh
./Utilities.sh

write_green "Utilities installed! Press [Enter] key to continue..."
read
clear 


#[.........GitHub SSH Key Setup.........]
write_red "Setting up GitHub SSH Key..."
chmod +x ./Github.sh
./Github.sh

write_green "GitHub SSH Key setup complete! Press [Enter] key to continue..."
read
clear


#[.......Dot Configs and Dotfiles Setup.......]
write_red "Setting up Dot Configs and Dotfiles..."
mv ./Setup_files/Dotfiles/* ~/.config/


#[........Network Manager.......]
#To:do: Setup Network Manager using iwd


#[.......Nvidea Graphic Drivers......]
#Todo: Setup Nvidia Graphic Drivers, 

# sudo apt update
# sudo apt upgrade 

# #Neofetch
# sudo apt install neofetch 
# sudo apt install htop
# sudo apt install sl
# sudo apt install curl
# sudo apt install transmission
# sudo apt install vlc
# sudo apt install imagemagick # This is for image convert!


# #Setting Up MEGA


# sudo apt install snap # Seeing if the Snap is installed or not (Fail safe)

# sudo snap install --classic code 

# clear

# # Installing C++ // Make a module that ask for the setup of the certain envirnment!

# sudo apt install build-essential # This will install all the packages below

# sudo apt install g++
# sudo apt install gdb
# sudo apt install cmake 
# sudo apt install make

# # Installing Nodejs and npm // A module for Web development 
# sudo apt intall nodejs
# sudo apt install npm

# #Installing You guessed it!!!!

# echo "Installing Whatsapp"

# sudo snap install whatsapp-linux-desktop

# echo "WhatsApp is done"

# clear

# # Installing Figma 

# echo "Next UP our favourite FIGMA!!!!!!!!!!!!!!!!!"

# sudo snap install figma-linux

# clear


# # Complete this!!! I have a exam tomorrow !!!!!
# # I fuck up my exam due to this!
# echo ""
# sudo snap install telegram-desktop 
# clear


# # This one as well Install the bashrc and the inputrc

# #!/bin/bash

# # Install Microsoft Edge
# # Find a Method!!!!

# #Downloading Python.... for fastest Deployment

# # sudo apt install python 





# # Installation of the cursor - 

# echo "Customizing the damn Cursor........."

# wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Ice.tar.xz

# tar -xvf Bibata-Modern-Ice.tar.xz 

# sudo mv ./Bibata-Modern-Ice /usr/share/icons/

# rm ./Bibata* 

# gsettings set org.gnome.desktop.interface cursor-size 48

# gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"

# gnome-shell --replace &


# # Customizing the GRUB 

# echo "Sustuumize the Grub from the startup"

# git clone https://github.com/vinceliuice/Elegant-grub2-themes.git 

# sudo ./Elegant-grub2-themes/install.sh 

# sudo rm -r ./Elegent*

# ehco "The GRUB is done moving to the GITHUB"

# clear



# # Setting Up Shell              //done last 

# sudo apt install zsh 
# chsh -s $(which zsh)

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#     # This is the extension for oh my zsh 
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#     # Downloading and setting oh my posh
# curl -s https://ohmyposh.dev/install.sh | bash -s 
# mkdir ~/.poshthemes/
# mv ./Setup_files/creeper.json ~/.poshthemes/

# rm ~/.zshrc 
# cp ./Setup_files/.zshrc ~/
# zsh

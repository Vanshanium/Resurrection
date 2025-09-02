source ./Variables.sh


#[.........Utillies Installation.........]
write_red "Installing Utilities... \n"
chmod +x ./Utilities.sh
./Utilities.sh

write_green "Utilities installed! Press [Enter] key to continue..."
read
clear 


#[.........GitHub SSH Key Setup.........]

read -p "Do you want to set up GitHub SSH Key? (y/n): " res
if [[ "$res" =~ ^[Yy]$ ]]; then
    write_red "Setting up GitHub SSH Key..."
    chmod +x ./Github.sh
    ./Github.sh

    write_green "GitHub SSH Key setup complete! Press [Enter] key to continue..."
    read
    clear
else
    write_red "Skipping GitHub SSH Key setup."
    sleep 1
    clear
fi


read -p "Do you want to set up Cursor (y/n): " res
if [[ "$res" =~ ^[Yy]$ ]]; then
    write_red "Setting up the Damn Cursor..."
    chmod +x ./Cursor.sh
    ./Cursor.sh

    write_green "Cursor setup complete! Press [Enter] key to continue..."
    read
    clear
else
    write_red "Skipping Cursor setup."
    sleep 1
    clear
fi

read -p "Do you want to set up Grub (y/n): " res
if [[ "$res" =~ ^[Yy]$ ]]; then
    write_red "Setting up the Damn Grub..."
    chmod +x ./Grub.sh
    ./Grub.sh

    write_green "Grub setup complete! Press [Enter] key to continue..."
    read
    clear
else
    write_red "Skipping Grub setup."
    sleep 1
    clear
fi

read -p "Do you want to set up The SHELLLLLLLLLL (y/n): " res
if [[ "$res" =~ ^[Yy]$ ]]; then
    write_red "Setting up the Damn Shell..."
    chmod +x ./Shell.sh
    ./Shell.sh

    write_green "Shell setup complete! Press [Enter] key to continue..."
    read
    clear
else
    write_red "Skipping Shell setup."
    sleep 1
    clear
fi


#[.......Dot Configs and Dotfiles Setup.......]
write_red "Setting up Dot Configs and Dotfiles..."
mv ./Setup_files/Dotfiles/* ~/.config/




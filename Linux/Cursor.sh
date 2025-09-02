source ./Variables.sh

wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Ice.tar.xz

tar -xvf Bibata-Modern-Ice.tar.xz 

sudo mv ./Bibata-Modern-Ice /usr/share/icons/

rm ./Bibata* 

gsettings set org.gnome.desktop.interface cursor-size 48

gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"

gnome-shell --replace &


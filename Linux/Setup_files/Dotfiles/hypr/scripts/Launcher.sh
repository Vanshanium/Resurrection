if pgrep -x "rofi" > /dev/null
then
    pkill rofi 
else
    rofi -show drun -config ~/.config/rofi/launcher.rasi
fi

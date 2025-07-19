#!/bin/bash 
bat_lvl=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | awk '{print $2}' | tr -d '%')
bat_stat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep state | awk '{print $2}')

if [ "$bat_stat" = "discharging" ]; then
    if [ "$bat_lvl" -le 5 ]; then
        rofi -name batwarn -show img -modi img:echo -theme ~/.config/rofi/batwarn/5.rasi 
    elif [ "$bat_lvl" -le 15 ]; then
        rofi -name batwarn -show img -modi img:echo -theme ~/.config/rofi/batwarn/15.rasi 
    elif [ "$bat_lvl" -le 30 ]; then
        rofi -name batwarn -show img -modi img:echo -theme ~/.config/rofi/batwarn/30.rasi 
    fi
fi

if [ "$bat_stat" = "charging" ]; then
    pkill -f "rofi.*-name batwarn"
fi

#!/bin/bash

# Wi-Fi device name
DEVICE="wlp4s0"

# Get connection status
device_info=$(nmcli device | grep "$DEVICE")
status=""

if [[ "$device_info" =~ "connected" ]]; then
  current_ssid=$(echo "$device_info" | awk '{print $4}')
  status="󰖩  $current_ssid"
elif [[ "$device_info" =~ "disconnected" ]]; then
  status="󰖪  $DEVICE disconnected"
else
  status="󰖪  $DEVICE unavailable"
fi

# Build clean Wi-Fi list with icons
wifi_list=$(nmcli --fields "SECURITY,SSID" device wifi list \
  | sed 1d \
  | sed 's/  */ /g' \
  | sed -E "s/WPA*.?\S/ /g" \
  | sed "s/^--/ /g" \
  | sed "s/  //g" \
  | sed "/--/d")

# Combine status line with Wi-Fi list
menu_list="$status"$'\n'"$wifi_list"

# Use Rofi to pick a network
chosen_network=$(echo "$menu_list" | uniq -u | rofi -dmenu -i -p "Wi-Fi:" -config ~/.config/rofi/wifi_menu.rasi)

# Exit if nothing selected
if [ -z "$chosen_network" ]; then
  exit 0
fi

# Ignore selection if user picked status line itself
if [[ "$chosen_network" == "$status" ]]; then
  exit 0
fi

# Get clean SSID (remove first 3 characters: icon + space)
read -r chosen_id <<< "${chosen_network:3}"

# If selected network is open (icon ), connect without password
if [[ "$chosen_network" =~ "" ]]; then
  nmcli device wifi connect "$chosen_id" ifname "$DEVICE"
  notify-send "Connected to $chosen_id"
else
  # Prompt for password
  wifi_password=$(rofi -dmenu -password -p "Password for $chosen_id:" -config ~/.config/rofi/wifi_menu.rasi)
  
  # Connect with password
  nmcli device wifi connect "$chosen_id" password "$wifi_password" ifname "$DEVICE"
  
  if [ $? -eq 0 ]; then
    notify-send "Connected to $chosen_id"
  else
    notify-send "Failed to connect to $chosen_id"
  fi
fi

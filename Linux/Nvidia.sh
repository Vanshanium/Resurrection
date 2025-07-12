#Check the driver - lspci -k | grep -A 3 -i 'vga'
#Disable the old driver: mv ./Setup_files/Blacklist.conf /etc/modprobe.d/Blacklist.conf
#Install nvidia
#Install nvidia-utils
#mv ./Setup_files/grub /etc/default/grub
#grub-mkconfig -o /boot/grub/grub.cfg 
#reboot

#This will work for the Backlight and the Brightness Control
#Check the driver nvidia-smi
# Check if CPU is Virtualized, you can enable it in the UEFI/BIOS settings 
# Read this File before running this.
# By the command : egrep -c '(vmx|svm)' /proc/cpuinfo

if [ $(egrep -c '(vmx|svm)' /proc/cpuinfo) -gt 0 ]; then
    echo "CPU virtualization is enabled"
else
    echo "CPU virtualization is NOT enabled"
fi

# Identify the disk with windows 
lsblk
echo "Enter the disk name where Windows is installed (e.g., sda1): "
read disk_name 

#!!!!!! Important !!!!!!
# Make sure Hibernation and Fast Startup are disabled in Windows before proceeding.
# You can disable Fast Startup from Control Panel > Power Options > Choose what the power buttons do
# Check it here `powercfg /a`

sudo pacman -S qemu-full libvirt virt-manager dnsmasq bridge-utils ovmf
sudo systemctl enable --now libvirtd


# Make sure your user is in the libvirt group
# IDK this ? please read this
sudo usermod -aG libvirt $USER

# Reboot your system to apply group changes
echo "Please reboot your system to apply group changes."    

# After reboot, run the following command to verify libvirt is running
virsh list --all



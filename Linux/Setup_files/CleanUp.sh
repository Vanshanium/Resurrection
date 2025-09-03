sudo pacman -Rns $(pacman -Qdtq)

read -p "Do you want to see a list of packages that can be removed? (y/n): " choice
if [[ "$choice" =~ ^[yY]$ ]]; then
    package_list=$(pacman -Qq)

    for package in $package_list; do
        required_by=$(sudo pacman -Qi "$package" | grep "Required By" | cut -d':' -f2 | xargs)
        if [[ "$required_by" == "None" ]]; then
            echo "$package"
        fi
    done
fi
# Make a Code for Comparing Packages!

pacman -Q > Packages_Screenshot.txt
source ./Variables.sh                                       # Loads Install command. 

write_green "Downloading Required Packages \n"

Install git
Install xclip

ssh-keygen -t ed25519 -C "vansh.singh8272@gmail.com" -f ~/.ssh/Github


cat ~/.ssh/Github.pub | xclip -selection clipboard

xdg-open "https://github.com/settings/ssh/new"

read -p "Press Enter to continue after pasting the Copied key in the browser..."

eval "$(ssh-agent -s)"          # Start The SSH Agent 

ssh-add ~/.ssh/Github           # Add Private Key to the SSH Agent

ssh -T git@github.com

clear
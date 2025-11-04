chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# This is the extension for oh my zsh 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Downloading and setting oh my posh
curl -s https://ohmyposh.dev/install.sh | bash -s 
# mkdir ~/.poshthemes/
mv ./Setup_files/creeper.json ~/.poshthemes/

rm ~/.zshrc 
cp ./Setup_files/.zshrc ~/
zsh


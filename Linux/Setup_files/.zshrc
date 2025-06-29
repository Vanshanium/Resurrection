# Setting up and setting the theme.

export LANG=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 30 # Days

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/

plugins=(git extract zsh-autosuggestions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


#  My Binding 

bindkey '^H' backward-kill-word # cat and press ctrl+backspace it will give the combination

# xmodmap -e "keycode 105 = Menu"

# Aliases

alias clip="xclip -selection clipboard"
alias sleep="shutdown now"

# Work on this command !!!
# alias refresh="rm -rf ~/.local/share/recently-used.xbel ~/.config/opera/Default/History ~/.config/opera/Default/History-journal && rm -rf '~/.config/opera/Default/Session Storage' ~/.config/opera/Default/Sessions"

#PATHS --where shell will search for commands 

export PATH=$PATH:~/.local/bin


# My Auto Complete 

    # Pip 

fpath+=~/.zfunc
autoload -Uz compinit
compinit


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(oh-my-posh init zsh --config ~/.poshthemes/creeper.json)" 
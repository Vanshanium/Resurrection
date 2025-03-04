# Path to your Oh My Zsh installation.
export LANG=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="candy"

# Uncomment the following line to use hyphen-insensitive completion.
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


bindkey '^H' backward-kill-word # cat and press ctrl+backspace it will give the combination

# Aliases

alias clip="xclip -selection clipboard"
alias sleep="shutdown now"


#PATHS --where shell will search for commands 

export PATH=$PATH:/home/voob/.local/bin


eval "$(oh-my-posh init zsh --config ~/.poshthemes/creeper.json)" 
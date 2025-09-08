#...............................Locale & Environment.........................#
export LANG=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"

#...............................SSH Agent for the Github.........................#
eval "$(ssh-agent -s)"
ssh-add -l | grep -q "Github" || ssh-add ~/.ssh/Github

#...............................Zsh Options & Update Settings.........................#
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 30
DISABLE_UNTRACKED_FILES_DIRTY="true"

#...............................Plugins.........................#
plugins=(git extract zsh-autosuggestions)

#...............................Source Oh My Zsh.........................#
eval "$(oh-my-posh init zsh --config ~/.poshthemes/creeper.json)"
source $ZSH/oh-my-zsh.sh

#...............................Key Bindings.........................#
bindkey '^H' backward-kill-word  # ctrl+backspace to delete word

#...............................Aliases.........................#
alias clip="xclip -selection clipboard"
alias sleep="shutdown now"
alias open="nautilus"

#...............................PATH.........................#
export PATH=$PATH:$HOME/.local/bin

#...............................Auto Completion.........................#
fpath+=~/.zfunc
autoload -Uz compinit
compinit

#...............................NVM (Node Version Manager).........................#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

#...............................Clear Terminal On Load.........................#
clear
# This ensures that the terminal is cleared every time a new zsh session starts.

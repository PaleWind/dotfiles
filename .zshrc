eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Initialize zoxide
eval "$(zoxide init zsh)"

# Initialize starship
eval "$(starship init zsh)"

# GPG signing
export GPG_TTY=$(tty)

# Command aliases
#
# VIM
alias v="nvim"
#
# Docker
alias dps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}'"
alias dcu="docker compose up -d"
alias dcs="docker compose stop"
alias dcd="docker compose down"
alias lzd='lazydocker'
#
# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
#
# Git
alias gc="git commit -m"
alias gba='git branch -a'
alias ga='git add'

# Set PATH
export PATH=$PATH:~/.local/bin

# Enable zsh plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

# Load plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# NVM setup
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Color settings
export LS_COLORS='fi=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:'
LS_COLORS+='pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32'
export LSCOLORS='ExGxDxDxCxDxDxFxFxexEx'
export TREE_COLORS=${LS_COLORS//04;}

# Use GNU ls colors in completion lists
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

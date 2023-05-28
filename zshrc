# Load antigen
source ~/antigen.zsh
source ~/.antigenrc

# Configure fnm
eval "$(fnm env --use-on-cd)"

# Configure autocomplete
fpath+="/opt/homebrew/share/zsh/site-functions"

autoload -Uz compinit
compinit

# Env vars
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export PATH=$PATH:$(go env GOPATH)/bin

# Aliases
alias cmd='command'
alias ls='exa'
alias ll='exl'
alias la='exl'
alias exl='exa -aFl --git'
alias bbd='brew bundle dump --force --file=~/.dotfiles/Brewfile'
alias trail='<<<${(F)path}'
alias cat='bat'

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

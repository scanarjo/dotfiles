# Custom prompt
PROMPT='
%1~ %L %# '
RPROMPT='%*'

# Env vars
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat

# Aliases
alias ~='cd ~'
alias ..='cd ..'
alias cmd='command'
alias ls='exa'
alias ll='exl'
alias exl='exa -aFl --git'
alias bbd='brew bundle dump --force --file=~/.dotfiles/Brewfile'
alias trail='<<<${(F)path}'

# Functions
function mkcd() {
    mkdir -p "$@" && cd "$_"
}

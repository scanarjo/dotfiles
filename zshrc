# Custom prompt
PROMPT='
%1~ %L %# '
RPROMPT='%*'

# Env vars
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Aliases
alias ~='cd ~'
alias ..='cd ..'
alias cmd='command'
alias ls='exa'
alias ll='exl'
alias exl='exa -aFl --git'

# Functions
function mkcd() {
    mkdir -p "$@" && cd "$_"
}

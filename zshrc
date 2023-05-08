# Custom prompt
PROMPT='
%1~ %L %# '
RPROMPT='%*'

# Env vars
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Aliases
alias ll='ls -AFhl'
alias cmd='command'

# Functions
function mkcd() {
    mkdir -p "$@" && cd "$_"
}

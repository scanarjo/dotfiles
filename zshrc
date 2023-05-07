# Custom prompt
PROMPT='
%1~ %L %# '
RPROMPT='%*'

# Aliases
alias ll='ls -AFhl'
alias cmd='command'

# Functions
function mkcd() {
    mkdir -p "$@" && cd "$_"
}

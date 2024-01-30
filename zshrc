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
export FNM_VERSION_FILE_STRATEGY=recursive

# Setup go
if exists go; then
  export PATH=$PATH:$(go env GOPATH)/bin
fi

# Aliases
alias cmd='command'
alias ls='exa'
alias ll='exl'
alias la='exl'
alias exl='exa -aFl --git'
alias bbd='brew bundle dump --force --file=~/.dotfiles/Brewfile'
alias trail='<<<${(F)path}'
alias cat='bat'
alias pn='pnpm'

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/scott/gcloud-sdk/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/scott/gcloud-sdk/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/scott/gcloud-sdk/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/scott/gcloud-sdk/google-cloud-sdk/completion.zsh.inc'; fi

export CLOUDSDK_PYTHON=$(which python3)

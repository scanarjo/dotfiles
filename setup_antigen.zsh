#!/usr/bin/env zsh

# Check if Antigen is already installed
if [[ ! -f antigen.zsh ]]; then
  echo "\nInstalling Antigen...\n"

  curl -L git.io/antigen > antigen.zsh
else
  echo "Antigen already installed. Skipping..."
fi

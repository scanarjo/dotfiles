#!/usr/bin/env zsh


if exists brew; then
  echo "Homebrew already installed. Skipping..."
else
  echo "\nInstalling Homebrew...\n"

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  eval "$(/opt/homebrew/bin/brew shellenv)"

  echo "\nHomebrew installed\n"
fi

echo "\nInstalling packages...\n"

brew bundle

echo "\nPackages installed\n"

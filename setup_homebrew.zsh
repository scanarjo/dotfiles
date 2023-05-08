#! /usr/bin/env zsh

echo "\nInstalling Homebrew...\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "\nInstalling packages...\n"

brew bundle

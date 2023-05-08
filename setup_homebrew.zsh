#! /usr/bin/env zsh

echo "\nInstalling Homebrew...\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "\nInstalling formulae...\n"

brew install bat
brew install httpie

echo "\nInstalling casks...\n"

brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask opera-gx
brew install --cask alfred
brew install --cask readdle-spark

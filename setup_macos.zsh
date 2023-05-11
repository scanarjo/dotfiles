#!/usr/bin/env zsh

echo "\nSetting up MacOS...\n"

# Ensure System Preferences is closed
osascript -e 'tell application "System Preferences" to quit'

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 1

# Finder
defaults write com.apple.finder ShowPathbar -bool true

# Dock
defaults write com.apple.dock autohide -bool "true"
defaults write com.apple.dock autohide-time-modifier -float 0.5
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock tilesize -int 42
defaults write com.apple.dock largesize -int 72
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "static-only" -bool "true"

# Screencapture
defaults write com.apple.screencapture location ~/Pictures/Screenshots

# Show Bluetooth in menu bar
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18

# Kill affected applications
killall Dock
killall Finder
killall SystemUIServer

echo "\nMacOS Setup Complete. A logout or restart might be necessary.\n"

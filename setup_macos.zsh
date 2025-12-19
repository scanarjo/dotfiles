#!/usr/bin/env zsh

echo "\nSetting up MacOS...\n"

# Ensure System Preferences is closed
osascript -e 'tell application "System Preferences" to quit'

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad Dragging -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -bool true

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

# Spotlight
defaults -currentHost write com.apple.Spotlight MenuItemHidden -int 1

# Show Bluetooth in menu bar
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18

# Kill affected applications
killall Dock
killall Finder
killall SystemUIServer

/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

# Disable Spotlight shortcut
/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.symbolichotkeys.plist \
  -c "Delete :AppleSymbolicHotKeys:64" \
  -c "Add :AppleSymbolicHotKeys:64:enabled bool false" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters array" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters: integer 65535" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters: integer 49" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters: integer 1048576" \
  -c "Add :AppleSymbolicHotKeys:64:type string standard"

echo "\nMacOS Setup Complete. A logout or restart might be necessary.\n"

osascript -e 'tell application "System Preferences" to quit'
# sudo -v

##############################
# Trackpad and Keyboard      #
##############################

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Shorter delay for key repeat
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 3

# Faster trackpad speed
defaults write -g com.apple.trackpad.scaling -float 7


##############################
# Dock                       #
##############################

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true


killall Dock

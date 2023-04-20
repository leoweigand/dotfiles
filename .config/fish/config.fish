# Disable greeting
set fish_greeting 

## Add brew binaries to fish path
fish_add_path /opt/homebrew/bin

starship init fish | source

# Directory jumping
zoxide init fish | source


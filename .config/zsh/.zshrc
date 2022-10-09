# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

XDG_CONFIG_HOME="$HOME/.config"

# Main config file for ZSH

. $ZDOTDIR/kitty.sh
. $ZDOTDIR/aliases.sh

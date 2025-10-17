# Zsh completion system configuration

# Initialize completion system
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Use menu selection for completions
zstyle ':completion:*' menu select

# Group completions by type
zstyle ':completion:*' group-name ''

# Show descriptions for completions
zstyle ':completion:*:descriptions' format '[%d]'

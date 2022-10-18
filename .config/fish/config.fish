set fish_greeting # disable fish greeting

# not sure why this has to be set
set -xg SHELL "$(which fish)"

# Directory jumping
zoxide init fish | source


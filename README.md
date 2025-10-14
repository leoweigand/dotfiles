# dotfiles

My personal dotfiles managed with [chezmoi](https://chezmoi.io).

## Quick Setup

Set up a new macOS machine with a single command:

```bash
curl -sfL https://raw.githubusercontent.com/leoweigand/dotfiles/main/.setup.sh | bash
```

This will:
- Install Xcode command line tools
- Install Homebrew
- Install chezmoi
- Prompt for your email and machine profile (personal/work)
- Clone and apply this dotfiles configuration

## What's Included

### Development Tools
- **Shell**: zsh with starship prompt, zoxide for directory jumping
- **Editor**: Neovim (AstroNvim configuration)
- **Terminal**: Ghostty
- **CLI Tools**: lazygit, ripgrep, bat, gh, fzf, tmux, ffmpeg, 1Password CLI
- **Node**: nvm for version management

### Apps
- Ghostty (terminal)
- Raycast (launcher)
- Obsidian (notes)

### Profile-Specific Packages
- **Work**: Slack, Zoom
- **Personal**: (add your personal-only apps here)

### macOS Settings
Custom macOS defaults for:
- Keyboard repeat rate
- Trackpad speed
- Dock preferences

## Usage

### Initial Setup
Already done via the setup script above, but for reference:
```bash
chezmoi init leoweigand
chezmoi apply
```

### Daily Usage

```bash
# Edit a config file
chezmoi edit ~/.zshrc

# See what changes would be made
chezmoi diff

# Apply changes
chezmoi apply

# Pull latest changes from repo
chezmoi update

# Add a new file to be managed
chezmoi add ~/.newfile
```

### Manual Management

The dotfiles source is located at `~/.local/share/chezmoi/`. You can:
```bash
cd ~/.local/share/chezmoi
# Edit files directly
git commit -am "Update config"
git push
```

## Structure

```
~/.local/share/chezmoi/
├── .chezmoi.json.tmpl                                  # Configuration with prompts
├── .chezmoiignore                                      # Files to ignore
├── .setup.sh                                           # Bootstrap script
├── LICENSE                                             # MIT License
├── README.md                                           # This file
│
├── Brewfile                                            # Common Homebrew packages
│
├── run_onchange_before_install-brew-packages.sh.tmpl   # Install/update packages
├── run_once_after_setup-macos-defaults.sh.tmpl         # Configure macOS settings
│
├── dot_zshrc                                           # Maps to ~/.zshrc
├── dot_zprofile                                        # Maps to ~/.zprofile
├── dot_gitconfig.tmpl                                  # Maps to ~/.gitconfig (templated)
│
└── dot_config/                                         # Maps to ~/.config/
    ├── gh/                                             # GitHub CLI config
    └── nvim/                                           # Neovim (AstroNvim) config
```

## License

MIT

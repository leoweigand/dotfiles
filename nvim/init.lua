-- Some helpful constants @TODO understand what each of these are
DATA_PATH = vim.fn.stdpath "data"
CACHE_PATH = vim.fn.stdpath "cache"
TERMINAL = vim.fn.expand "$TERMINAL"
USER = vim.fn.expand "$USER"

require "settings"
require "keymappings"
require "plugins"
require "statusline"

-- Set color cheme
vim.g.tokyonight_style = "night"
vim.cmd('colorscheme tokyonight')

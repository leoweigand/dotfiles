-- Some helpful constants @TODO understand what each of these are
DATA_PATH = vim.fn.stdpath "data"
CACHE_PATH = vim.fn.stdpath "cache"
TERMINAL = vim.fn.expand "$TERMINAL"
USER = vim.fn.expand "$USER"

require "settings"
require "plugins"

-- Set color cheme
vim.cmd('colorscheme codedark')


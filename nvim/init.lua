-- Some helpful constants @TODO understand what each of these are
DATA_PATH = vim.fn.stdpath "data"
CACHE_PATH = vim.fn.stdpath "cache"
TERMINAL = vim.fn.expand "$TERMINAL"
USER = vim.fn.expand "$USER"

require "settings"
require "keymappings"
require "plugins"
require "statusline"
require "lsp"

-- Set color cheme
vim.g.sonokai_style = "andromeda"
vim.cmd('colorscheme sonokai')

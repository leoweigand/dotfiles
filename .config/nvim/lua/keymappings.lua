local which_key = require 'which-key'
local telescope = require 'telescope.builtin'

-- Set leader to space key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

which_key.register({
  jk = { '<esc>', 'Exit insert mode without finger acrobatics' }
}, { mode = 'i' })

which_key.register({
  ['<leader>'] = {
    e = { '<cmd>NvimTreeToggle<CR>', 'Explorer' },
    s = { ':w<cr>', 'Save file' },
    q = {
      name = 'Quit',
      q = { ':q<cr>', 'Close file' },
      s = { ':x<cr>', 'Save and close' },
      a = { ':qa<cr>', 'Close all files' },
    },
    -- Telescope bindings
    p = { function() telescope.find_files(require('telescope.themes').get_dropdown({previewer=false})) end, 'Find files by name' },
    f = {
      name = 'Search',
      f = { function () telescope.live_grep() end, 'Search project' },
      R = { ':%s//g<left><left>', 'Replace all', silent = false },
      h = { '<cmd>noh<cr>', 'Clear search highlight' }
    },
    c = { '<cmd>CommentToggle<cr>', 'Toggle line comment' },
  },
  t = {
   j = { '<cmd>tabnext<cr>', 'Next tab' },
   k = { '<cmd>tabprevious<cr>', 'Previous tab' },
   n = { ':tabnew ', 'New tab', silent = false },
   nn = { ':tabnew<cr>', 'New tab' },
   c = { ':tabclose<cr> ', 'Close tab' },
  },
  -- move lines up and down
  ['<C-k>'] = { ':m .-2<CR>==', 'Move line up' },
  ['<C-j>'] = { ':m .+1<CR>==', 'Move line down' },
  -- navigate windows with arrow keys
  ['<left>'] = { '<C-w>h', 'Focus window to the left' },
  ['<right>'] = { '<C-w>l', 'Focus window to the right' },
  ['?'] = { '<cmd>WhichKey<cr>', 'Open WhichKey' },
})

which_key.register({
  ["/"] = { ":CommentToggle<cr>", "Toggle line comment" },
}, { mode = 'v' })

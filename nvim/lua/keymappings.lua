local utils = require 'utils'
local which_key = require 'which-key'
local telescope = require 'telescope.builtin'

-- Set leader to space key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

utils.registerMappings({
  insert_mode = {
    ['jk'] = '<Esc>'
  },

  normal_mode = {
    -- move lines up and down
    ['<C-k>'] = ':m .-2<CR>==',
    ['<C-j>'] = ':m .+1<CR>==',
    -- navigate windows with arrow keys
    ['<left>'] = '<C-w>h',
    ['<right>'] = '<C-w>l',
  }
})

which_key.register({
  ['<leader>'] = {
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
      f = { function () telescope.live_grep() end, 'Search project' }
    },
    c = { '<cmd>CommentToggle<cr>', 'Toggle line comment' },
  }
})

which_key.register({
  ["/"] = { ":CommentToggle<cr>", "Toggle line comment" },
}, { mode = 'v' })

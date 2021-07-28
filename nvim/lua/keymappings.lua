local utils = require 'utils'

-- Set leader to space key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local mappings = {
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

    -- convert these to use <leader> and vim-whichkey
    ['<leader>s'] = ':w<CR>',
    ['<leader>q'] = ':q<CR>',
    ['<leader>p'] = '<cmd>Telescope find_files<CR>',
    ['<leader>f'] = '<cmd>Telescope live_grep<CR>',
  }
}

utils.registerMappings(mappings)


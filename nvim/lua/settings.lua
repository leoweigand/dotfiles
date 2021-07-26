-- Global neovim settings
local settings = {
  -- Editor Settings
  showmode = false, -- hide things like -- INSERT --, replaced by status line
  cursorline = true, -- highlight the current line
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  termguicolors = true, -- set term gui colors (most terminals support this)
  mouse = "a", -- allow the mouse to be used in neovim
  updatetime = 300, -- faster completion
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  smartcase = true, -- case-sensitive searches for terms with >1 uppercase character
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
  -- File Handling
  swapfile = false, -- disable swap file creation
  fileencoding = "utf-8", -- the encoding written to a file
  undodir = CACHE_PATH .. "/undo", -- set an undo directory
  undofile = true, -- enable persistent undo
}

for option, value in pairs(settings) do
  vim.opt[option] = value
end

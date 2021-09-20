local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Install packer on first load
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'

    -- Theme
    use { 'tomasiser/vim-code-dark', opt = true }
    use 'sainnhe/sonokai'
    use 'folke/tokyonight.nvim'
    -- Galaxy line
    use {
      'glepnir/galaxyline.nvim',
      branch = 'main',
      -- some optional icons
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    -- File tree
    use { "kyazdani42/nvim-tree.lua" }
    -- Auto-switch to project root dir
    use "airblade/vim-rooter"

    use {
      "terrortylor/nvim-comment",
      -- event = "BufRead",
      config = function()
        require('nvim_comment').setup({})
      end
    }

    -- Language server config
    use 'neovim/nvim-lspconfig' -- Sensible defaults for LSP not included with neovim
    use 'kabouzeid/nvim-lspinstall'
    use 'jose-elias-alvarez/null-ls.nvim' -- Somehow neovim becomes an LSP
    use 'tamago324/nlsp-settings.nvim' -- JSON support

    -- Whichkey
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {
          -- which-key config (doesn’t include mappings)
        }
      end
    }

    -- Telescope
    use {
     'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
end)

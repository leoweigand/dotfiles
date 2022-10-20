return {
  -- Set colorscheme to use
  colorscheme = "sonokai",

  -- Set dashboard header
  header = {
    "██      ███████  ██████  ██    ██ ██ ███    ███",
    "██      ██      ██    ██ ██    ██ ██ ████  ████",
    "██      █████   ██    ██ ██    ██ ██ ██ ████ ██",
    "██      ██      ██    ██  ██  ██  ██ ██  ██  ██",
    "███████ ███████  ██████    ████   ██ ██      ██",
  },

  -- set vim options here (vim.<first_key>.<second_key> =  value)
  options = {
    g = {
      -- sonokai_style = "shusia", -- select color scheme variant
    },
  },

  -- Configure plugins
  plugins = {
    init = {
      -- Color scheme
      { "sainnhe/sonokai" },
      -- Quick jumping
      { "phaazon/hop.nvim", branch = "v2" },
      { "RRethy/nvim-treesitter-textsubjects" },
    },
    bufferline = {
      options = {
        show_close_icon = false,
        show_buffer_close_icons = false,
      },
    },
    ["neo-tree"] = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          never_show = {
            ".git",
          },
        },
      },
    },
    ["null-ls"] = function(config)
      local null_ls = require "null-ls"

      config.sources = {
        -- Set a formatter
        null_ls.builtins.formatting.prettierd,
        -- Set a linter
        null_ls.builtins.diagnostics.eslint,
      }

      return config
    end,
    telescope = require "user.telescope",
    -- ["nvim-treesitter-textsubjects"] = {
    --   ensure_installed = { "treesitter" }
    -- }
  },
}

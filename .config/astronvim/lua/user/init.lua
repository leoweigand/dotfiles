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
      sonokai_style = "shusia", -- select color scheme variant
    },
  },

  -- Configure plugins
  plugins = {
    init = {
      -- Color scheme
      { "sainnhe/sonokai" },
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
    -- ["nvim-treesitter-textsubjects"] = {
    --   ensure_installed = { "treesitter" }
    -- }
  },
}

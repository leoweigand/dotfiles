-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "markdown",
      -- add more arguments for adding more treesitter parsers
    })
  end,
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    -- tell treesitter to use the markdown parser for mdx files
    vim.treesitter.language.register("markdown", "mdx")
  end,
}

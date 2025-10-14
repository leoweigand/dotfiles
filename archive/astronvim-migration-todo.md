# AstroNvim to LazyVim Migration TODO

## LazyVim Configuration Structure

```
~/.config/nvim/
├── lua/
│   ├── config/
│   │   ├── autocmds.lua     # Autocommands
│   │   ├── keymaps.lua      # Custom keymaps
│   │   ├── lazy.lua         # Lazy.nvim configuration
│   │   └── options.lua      # Vim options
│   └── plugins/
│       └── *.lua            # Plugin specifications (auto-loaded)
└── init.lua
```

## Migration Checklist

### 1. Core Settings → `lua/config/options.lua`
- [ ] `vim.opt.relativenumber = true`
- [ ] `vim.opt.number = true`
- [ ] `vim.opt.spell = false`
- [ ] `vim.opt.signcolumn = "auto"`
- [ ] `vim.opt.wrap = false`

### 2. Leader Keys → `lua/config/lazy.lua` or `init.lua`
- [ ] `vim.g.mapleader = " "` (space)
- [ ] `vim.g.maplocalleader = ","` (comma)

### 3. LSP Configuration → `lua/plugins/lsp.lua`
- [ ] Enable format on save
- [ ] Enable autoformat
- [ ] Custom TypeScript keymaps (vtsls):
  - `<leader>lu` - Remove unused imports
  - `<leader>lm` - Add missing imports

### 4. Additional Plugins → `lua/plugins/*.lua`

#### `lua/plugins/motion.lua`
- [ ] **leap.nvim** - Motion plugin
  ```lua
  {
    "ggandor/leap.nvim",
    event = "BufEnter",
    config = function()
      require("leap").add_default_mappings()
    end,
  }
  ```

#### `lua/plugins/editing.lua`
- [ ] **nvim-surround** - Surround text objects
  ```lua
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  }
  ```

#### `lua/plugins/markdown.lua`
- [ ] **markdown.nvim** - Enhanced markdown support
  ```lua
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    opts = {},
  }
  ```

### 5. Mason/LSP/Tools → `lua/plugins/lsp.lua` or use LazyVim extras
- [ ] LSP servers: `lua_ls`, `jsonls`
- [ ] Formatters: `prettier`, `stylua`
- [ ] Debugger: `python`

### 6. UI Customizations

#### Neo-tree → `lua/plugins/neo-tree.lua`
- [ ] Show dotfiles: `hide_dotfiles = false`

#### Alpha Dashboard → `lua/plugins/alpha.lua`
- [ ] Custom dashboard header (if desired)

### 7. Filetype Support → `lua/config/autocmds.lua` or `init.lua`
- [ ] MDX support:
  ```lua
  vim.filetype.add {
    extension = {
      mdx = "mdx",
    },
  }
  ```

## Notes
- LazyVim may already include some of these features via extras or defaults
- Check LazyVim's built-in LSP configuration before duplicating
- Consider using LazyVim extras for common setups (typescript, markdown, etc.)
- Refer to: https://www.lazyvim.org/configuration

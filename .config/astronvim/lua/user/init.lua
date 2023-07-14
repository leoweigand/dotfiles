local utils = require("astronvim.utils")
return {
	lsp = {
		setup_handlers = {
			-- add custom handler
			tsserver = function(_, opts)
				require("typescript").setup({
					server = utils.extend_tbl(opts, {
						init_options = {
							preferences = {
								importModuleSpecifierPreference = "project-relative",
								importModuleSpecifierEnding = "minimal",
							}
						}
					})
				})
			end,
		},
	}, -- options = {
	--   g = {
	--     -- sonokai_style = "shusia", -- select color scheme variant
	--   },
	-- },

	-- Configure plugins
	-- plugins = {
	--   init = {
	--     -- Color scheme
	--     -- { "sainnhe/sonokai" },
	--     -- Quick jumping
	--     { "phaazon/hop.nvim", branch = "v2" },
	--   },
	--   -- @todo migrate now invalid config
	--   -- bufferline = {
	--   --   options = {
	--   --     show_close_icon = false,
	--   --     show_buffer_close_icons = false,
	--   --   },
	--   -- },
	--   ["neo-tree"] = {
	--     filesystem = {
	--       filtered_items = {
	--         hide_dotfiles = false,
	--         never_show = {
	--           ".git",
	--         },
	--       },
	--     },
	--   },
	-- },
}

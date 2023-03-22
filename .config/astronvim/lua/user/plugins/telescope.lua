return {
	"nvim-telescope/telescope.nvim",
	opts = function(_, opts)
		local actions = require("telescope.actions")
		return require("astronvim.utils").extend_tbl(opts, {
			defaults = {
				mappings = {
					i = {
						-- these should be defaults but are probably overridden by astronvim
						["<C-n>"] = actions.move_selection_next,
						["<C-p>"] = actions.move_selection_previous,
					},
				},
			},
		})
	end,
	config = function(...)
		require("plugins.configs.telescope")(...)
	end,
}

return {
	-- Normal mode bindings
	n = {
		["<leader>gy"] = {
			function()
				require("gitlinker").get_buf_range_url("n")
			end,
			desc = "Copy link to line on remote",
		},
		["<leader>go"] = {
			function()
				require("gitlinker").get_buf_range_url(
					"n",
					{ action_callback = require("gitlinker.actions").open_in_browser }
				)
			end,
			desc = "Open line on remote",
		},
		["<leader>lm"] = {
			function()
				require("typescript").actions.addMissingImports()
			end,
			desc = "Add missing imports"
		}
	},
	-- Visual mode bindings
	v = {
		["<leader>gy"] = {
			function()
				require("gitlinker").get_buf_range_url("v")
			end,
			desc = "Copy link to range on remote",
		},
		["<leader>go"] = {
			function()
				require("gitlinker").get_buf_range_url(
					"v",
					{ action_callback = require("gitlinker.actions").open_in_browser }
				)
			end,
			desc = "Open range on remote",
		},
	},
}

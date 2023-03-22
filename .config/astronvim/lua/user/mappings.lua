return {
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
	},
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

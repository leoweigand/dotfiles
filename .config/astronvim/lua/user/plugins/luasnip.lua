local getConfigPath = function()
	local path = vim.fn.stdpath("config")
	return vim.fn.substitute(path, [[\(.*\)\zsnvim]], "astronvim", "")
end

return {
	"L3MON4D3/LuaSnip",
	config = function(plugin, opts)
		-- include the default astronvim config that calls the setup call
		require("plugins.configs.luasnip")(plugin, opts)
		-- load snippets paths
		require("luasnip.loaders.from_vscode").lazy_load({
			-- this can be used if your configuration lives in ~/.config/nvim
			-- if your configuration lives in ~/.config/astronvim, the full path
			-- must be specified in the next line
			paths = { getConfigPath() .. "/lua/user/snippets" },
		})
	end,
}

return {
	"jose-elias-alvarez/null-ls.nvim",
	opts = function(_, config)
		local null_ls = require("null-ls")

		-- supported formatters and linters:
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

		config.sources = {
			-- Set a formatter
			null_ls.builtins.formatting.prettier,
			null_ls.builtins.formatting.stylua,
			-- Set a linter
			null_ls.builtins.diagnostics.eslint,
		}

		return config
	end,
}

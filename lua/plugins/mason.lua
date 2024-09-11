return {
	{
		"williamboman/mason.nvim",
		priority = 100,
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"jsonls",
				"rust_analyzer",
				"svelte",
				"cssls",
				"ts_ls",
				"taplo",
			},
		},
	},
}

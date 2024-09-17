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
				"cssls",
				"docker_compose_language_service",
				"dockerls",
				"jsonls",
				"ltex",
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"svelte",
				"tailwindcss",
				"taplo",
				"ts_ls",
				"yamlls",
				--"basedpyright",
			},
		},
	},
}

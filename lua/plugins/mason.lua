return {
	"williamboman/mason.nvim",
	priority = 100,
	dependencies = {
		{
			"williamboman/mason-lspconfig.nvim",
			config = nil,
		},
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"jsonls",
				"rust_analyzer",
				"svelte",
				"cssls",
				"tsserver",
				"taplo",
			},
		})
	end,
}

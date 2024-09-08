return {
	"neovim/nvim-lspconfig",
	priority = 90,
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local l = require("lspconfig")
		local cap = require("cmp_nvim_lsp").default_capabilities()

		l.lua_ls.setup({
			capabilities = cap,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					runtime = {
						version = "LuaJIT",
					},
				},
			},
		})

		l.rust_analyzer.setup({
			capabilities = cap,
		})

		l.taplo.setup({
			capabilities = cap,
		})

		l.ts_ls.setup({
			capabilities = cap,
		})

		l.cssls.setup({
			capabilities = cap,
		})

		l.svelte.setup({
			capabilities = cap,
		})

		l.html.setup({
			capabilities = cap,
		})
	end,
}

return {
	{
		"folke/which-key.nvim",
		keys = {
			{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
			{ "<F2>", vim.lsp.buf.rename, desc = "Rename symbol" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},

		config = function()
			local l = require("lspconfig")

			local cap = require("cmp_nvim_lsp").default_capabilities()

			--l.basedpyright.setup(cap())
			l.pyright.setup({ capabilities = cap })
			l.cssls.setup({ capabilities = cap })
			l.docker_compose_language_service.setup({ capabilities = cap })
			l.dockerls.setup({ capabilities = cap })
			l.gopls.setup({ capabilities = cap })
			l.html.setup({ capabilities = cap })
			l.lua_ls.setup({
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
				capabilities = cap,
			})
			l.ltex.setup({ capabilities = cap })
			l.rust_analyzer.setup({ capabilities = cap })
			l.svelte.setup({ capabilities = cap })
			l.tailwindcss.setup({ capabilities = cap })
			l.taplo.setup({ capabilities = cap })
			l.yamlls.setup({ capabilities = cap })
		end,
	},
	{
		{ "nvim-lua/plenary.nvim", lazy = true },
		{
			"pmizio/typescript-tools.nvim",
			opts = {},
		},
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
		dependencies = {
			{ "Bilal2453/luvit-meta", lazy = true },
		},
	},
}

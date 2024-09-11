return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"L3MON4D3/LuaSnip",
	},
	event = "InsertEnter",
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = {
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<C-b>"] = cmp.mapping.complete(),
				["<C-Up>"] = cmp.mapping.scroll_docs(-3),
				["<C-Down>"] = cmp.mapping.scroll_docs(3),
				["<M-Up>"] = cmp.mapping.select_prev_item(),
				["<M-Down>"] = cmp.mapping.select_next_item()
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "nvim_lsp_signature_help" },
				{ name = "luasnip" },
				{ name = "lazydev", groupindex = 0 },
				{ name = "codeium" }
			}, { name = "buffer" }),
			window = {
				documentation = cmp.config.window.bordered(),
			},
		})
	end,
}

return {
	"mhartington/formatter.nvim",
	config = function()
		local fts = require("formatter.filetypes")

		require("formatter").setup({
			filetype = {
				lua = {
					fts.lua.stylua,
				},
				javascript = {
					fts.javascript.prettierd,
				},
				typescript = {
					fts.typescript.prettierd,
				},
				svelte = {
					fts.svelte.prettierd,
				},
				html = {
					fts.html.prettierd,
				},
			},
		})

		vim.api.nvim_create_augroup("formatter", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			group = "formatter",
			command = ":FormatWrite",
		})
	end,
}

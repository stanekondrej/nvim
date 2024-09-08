return {
	"ray-x/go.nvim",
	config = function()
		local caps = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
		require("go").setup({
			lsp_cfg = {
				capabilities = caps
			}
		})

		local group = vim.api.nvim_create_augroup("GoFormat", {})
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			pattern = "*.go",
			callback = function()
				require("go.format").goimports()
			end,
			group = group,
		})
	end,
	event = "CmdlineEnter",
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()',
}

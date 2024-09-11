return {
	"folke/trouble.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	opts = {},
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<Cmd>Trouble diagnostics toggle<CR>",
			desc = "Diagnostics (Trouble)"
		}
	}
}

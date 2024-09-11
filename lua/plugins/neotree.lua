return {
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "MunifTanjim/nui.nvim", lazy = true },
	{
		"folke/which-key.nvim",
		keys = {
			{
				"<leader>fv",
				"<Cmd>:Neotree toggle<CR>",
				desc = "Toggle neotree",
			},
			{
				"<leader>fo",
				"<Cmd>:Neotree position=current<CR>",
				desc = "Neotree in NetRW mode",
			},
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		opts = {
			close_if_last_window = true,
			popup_border_style = "rounded",

			window = {
				position = "right",
			},
		},
	},
}

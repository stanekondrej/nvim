return {
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		opts = {
			disable_move = true,
			shortcut_type = "number",
		},
		enabled = false,
	},
}

vim.g.barbar_auto_setup = false

return {
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
		},
		event = "BufNew",
		opts = {
			animation = false,
			auto_hide = true,
			maximum_length = 15,
		},
		keys = {
			{ "<M-h>", "<Cmd>BufferPrevious<CR>", desc = "Go to the previous buffer" },
			{ "<M-l>", "<Cmd>BufferNext<CR>", desc = "Go to the next buffer" },
			{ "<M-H>", "<Cmd>BufferMovePrevious<CR>", desc = "Move the buffer to the left" },
			{ "<M-L>", "<Cmd>BufferMoveNext<CR>", desc = "Move the buffer to the right" },
			{ "<M-w>", "<Cmd>BufferClose<CR>", desc = "Close the buffer" },
			{ "<M-p>", "<Cmd>BufferPick<CR>", desc = "Pick a buffer" },
		},
	},
}

return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		require("barbar").setup({
			animation = false,
		})

		require("which-key").add({
			{
				mode = { "n" },
				group = "tab bar",
				{ "<M-h>", "<Cmd>BufferPrevious<CR>", desc = "Go to the previous buffer" },
				{ "<M-l>", "<Cmd>BufferNext<CR>", desc = "Go to the next buffer" },
				{ "<M-H>", "<Cmd>BufferMovePrevious<CR>", desc = "Move the buffer to the left" },
				{ "<M-L>", "<Cmd>BufferMoveNext<CR>", desc = "Move the buffer to the right" },
				{ "<M-w>", "<Cmd>BufferClose<CR>", desc = "Close the buffer" },
				{ "<M-p>", "<Cmd>BufferPick<CR>", desc = "Pick a buffer" },
			},
		})
	end,
}

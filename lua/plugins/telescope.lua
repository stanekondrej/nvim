return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = function()
		local builtin = require("telescope.builtin")

		return {
			{ "<leader>ff", builtin.find_files, desc = "Find a file" },
			{ "<leader>fg", builtin.live_grep, desc = "Grep files" },
			{ "<leader>fb", builtin.buffers, desc = "Search buffers" },
			{ "<leader>fk", builtin.keymaps, desc = "Search keymaps" },
			{ "<leader>b", builtin.git_branches, desc = "Search branches" },
		}
	end,
	opts = {
		pickers = {
			find_files = { theme = "dropdown" },
			live_grep = { theme = "dropdown" },
			buffers = { theme = "dropdown" },
			keymaps = { theme = "dropdown" },
			git_branches = { theme = "dropdown" },
		},
	},
}

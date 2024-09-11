return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>ff", require("telescope.builtin").find_files, desc = "Find a file" },
		{ "<leader>fg", require("telescope.builtin").live_grep, desc = "Perform a grep on files" },
	},
}

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local wk = require("which-key")
		local b = require("telescope.builtin")

		wk.add({
			{
				group = "telescope",
				mode = "n",
				{ "<leader>ff", b.find_files, desc = "Find a file" },
				{ "<leader>fg", b.live_grep, desc = "Perform a grep on files" },
			},
		})
	end,
}

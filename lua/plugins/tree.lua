vim.g.nvim_tree_side = "right"

local function my_on_attach(bufnr)
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	local api = require("nvim-tree.api")
	local k = vim.keymap.set

	k("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
	k("n", "<CR>", api.node.open.tab, opts("Open file in new tab"))
	k("n", "<S-CR>", api.node.open.vertical, opts("Open file in vertical split"))
	k("n", "c", api.fs.create, opts("Create a new file/folder"))
	k("n", "d", api.fs.remove, opts("Remove a file/folder"))
	k("n", "r", api.fs.rename, opts("Rename a file/folder"))
end

return {
	{
		"folke/which-key.nvim",
		keys = {
			{ "<leader>tt", "<Cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
			{ "<leader>tf", "<Cmd>NvimTreeFindFile<CR>", desc = "Focus current open file in file tree" },
		},
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			view = {
				width = 35,
				side = "right",
			},

			on_attach = my_on_attach,
		},
	},
}

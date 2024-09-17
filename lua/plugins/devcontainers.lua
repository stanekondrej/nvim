return {
	{
		"jamestthompson3/nvim-remote-containers",
		keys = {
			{ "<leader>ca", "<CMD>AttachToContainer<CR>", desc = "Attach to container" },
			{ "<leader>cb", "<CMD>BuildImage true<CR>", desc = "Build image" },
			{ "<leader>cB", "<CMD>BuildImage false", desc = "Build image silently" },
			{ "<leader>cs", "<CMD>StartImage<CR>", desc = "Start image" },
			{ "<leader>Cu", "<CMD>ComposeUp<CR>", desc = "Compose up" },
			{ "<leader>Cd", "<CMD>ComposeDown<CR>", desc = "Compose down" },
			{ "<leader>CD", "<CMD>ComposeDestroy<CR>", desc = "Destroy compose containers" },
		},
	},
}

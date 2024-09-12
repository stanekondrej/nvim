return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "javascript", "typescript", "lua", "rust", "json", "markdown", "toml", "html" },
			sync_install = false,
			auto_install = false,
			ignore_install = {},
			highlight = { enable = true },
			use_languagetree = true,
		})
	end,
}

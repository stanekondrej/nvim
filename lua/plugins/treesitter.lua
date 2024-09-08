return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "javascript", "typescript", "lua", "rust", "json", "markdown", "toml" },
		highlight = { enable = true },
	},
}

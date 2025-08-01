return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			ensure_installed = { "regex" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

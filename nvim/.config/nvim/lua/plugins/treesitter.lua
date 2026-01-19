return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			ensure_installed = { "regex" },
			ignore_install = { "csv" },
			highlight = {
				enable = true,
				disable = { "csv" },
			},
			indent = { enable = true },
		})
	end,
}

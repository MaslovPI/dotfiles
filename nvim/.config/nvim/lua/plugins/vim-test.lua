return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	config = function()
		vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { desc = "[T]est nearest" })
		vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { desc = "[T]est file" })
		vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", { desc = "Test suite" })
		vim.keymap.set("n", "<leader>l", ":TestLast<CR>", { desc = "Test [l]ast" })
		vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", { desc = "Test visit" })
		vim.cmd("let test#strategy = 'vimux'")
	end,
}

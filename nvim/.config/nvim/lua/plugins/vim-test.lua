return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	config = function()
		--Tests
		vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc = "[T]est nearest" })
		vim.keymap.set("n", "<leader>tT", ":TestFile<CR>", { desc = "[T]est file" })
		vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { desc = "Test suite" })
		vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc = "Test [l]ast" })
		vim.keymap.set("n", "<leader>tg", ":TestVisit<CR>", { desc = "Test visit" })
		vim.cmd("let test#strategy = 'vimux'")
	end,
}

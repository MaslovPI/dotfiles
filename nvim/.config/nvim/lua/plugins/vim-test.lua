return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	config = function()
		--Tests
		vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc = "[T]est nearest" })
		vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { desc = "[T]est file" })
		vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { desc = "[T]est suite" })
		vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc = "[T]est [l]ast" })
		vim.keymap.set("n", "<leader>tg", ":TestVisit<CR>", { desc = "[T]est visit" })
		vim.cmd("let test#strategy = 'vimux'")
	end,
}

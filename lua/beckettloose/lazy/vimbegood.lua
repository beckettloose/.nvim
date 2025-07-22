return {
	"theprimeagen/vim-be-good",

	dependencies = {
		"nvim-lua/plenary.nvim"
	},

	config = function()
		vim.keymap.set("n", "<leader>vbg", "<cmd>VimBeGood<CR>", { desc = "Vim Be [G]ood" })
	end
}

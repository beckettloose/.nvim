return {
	"folke/snacks.nvim",
	opts = {
		picker = {},
		explorer = {},
	},
	keys = {
		{ "<leader><space>", function () Snacks.picker.smart() end, desc = "Smart Find Files" },
		{ "<leader>,", function () Snacks.picker.buffers() end, desc = "Smart Find Buffers" },
		{ "<C-p>", function () Snacks.picker.git_files() end, desc = "Find Git Files" },
		{ "<leader>/", function () Snacks.picker.lines() end, desc = "Lines" },
		{ "<leader>vh", function () Snacks.picker.help() end, desc = "[H]elp Search" },
		{ "<leader>vk", function () Snacks.picker.keymaps() end, desc = "[K]eymap Search" },
		{ "<leader>x", function () Snacks.picker.explorer() end, desc = "E[x]plorer" },
		-- Still need <leader>vcl to open filetype switcher prompt
	}
}

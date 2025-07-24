-- remap.lua: Remap keys for neovim. Borrowed from kickstart.nvim and ThePrimeagen

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear highlight on <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- borrowed from ThePrimeagen
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "File [E]xplorer" })

-- Shift selected lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join next line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Center line after <C-u>/<C-d> scroll and n/N searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- "greatest remap ever" - ThePrimeagen
-- pastes from yank register. allows you to paste multiple times without
-- overwriting the contents of the register being pasted from
vim.keymap.set("x", "<leader>p", [["0p]], { desc = "[p]aste from Yank Register" })
-- vim.keymap.set("x", "<leader>p", [["_dP]]) -- This is a slightly different version of the same thing

-- "next greatest remap ever" - ThePrimeagen
-- Yanks selection or line to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[y]ank Selection to Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank Line to Clipboard" })

-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- "This is going to get me cancelled" - ThePrimeagen
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Unmap Q
vim.keymap.set("n", "Q", "<nop>")

-- Open tmux sessionizer
vim.keymap.set("n", "<C-f>", '<cmd>silent !tmux neww -n sessionizer "tmux-sessionizer 1"<CR>')

-- Format buffer
vim.keymap.set("n", "<leader><C-f>", vim.lsp.buf.format, { desc = "[F]ormat Buffer" })

-- Next and Prev location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next Location List Item" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Prev Location List Item" })

-- Find and replace word under cursor throughout entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace Word Under Cursor" })

-- Mark current file as executable
vim.keymap.set("n", "<leader>vmx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Current File E[x]ecutable" })

-- We do a little trolling
vim.keymap.set("n", "<leader>v0r", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it [R]ain" })
vim.keymap.set("n", "<leader>v0s", "<cmd>CellularAutomaton scramble<CR>", { desc = "[S]cramble" })
vim.keymap.set("n", "<leader>v0g", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "[G]ame of Life" })

-- Disable arrow keys to break the habit of using them
vim.keymap.set({ "n", "i" }, "<left>", '<cmd> echo "Use h to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<right>", '<cmd> echo "Use l to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<up>", '<cmd> echo "Use k to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<down>", '<cmd> echo "Use j to move!!"<CR>')

-- Cloak.nvim key bindings --
vim.keymap.set("n", "<leader>vlt", "<cmd>CloakToggle<CR>", { desc = "[T]oggle" })
vim.keymap.set("n", "<leader>vld", "<cmd>CloakDisable<CR>", { desc = "[D]isable" })
vim.keymap.set("n", "<leader>vle", "<cmd>CloakEnable<CR>", { desc = "[E]nable" })
vim.keymap.set("n", "<leader>vlp", "<cmd>CloakPreviewLine<CR>", { desc = "[P]review Line" })

-- visual jump to next capital letter
vim.keymap.set("v", ".", [[/\u<CR>h<cmd>nohlsearch<CR>]])

-- I suck at typing lol
vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Qa', 'qa', {})
vim.api.nvim_create_user_command('Q', 'q', {})


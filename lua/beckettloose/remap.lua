-- remap.lua
-- Custom key remaps and shortcuts

-- Set <leader> key to spacebar
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear highlight on <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Shortcut to open file explorer
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "File [E]xplorer" })

-- Shift selected lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join next line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Center cursor vertically when <C-u>/<C-d> scrolling and n/N searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste from yank register. Allows you to paste over a visual selection
-- without clobbering the register being pasted from.
-- "greatest remap ever" - ThePrimeagen
vim.keymap.set("x", "<leader>p", [["0p]], { desc = "[p]aste from Yank Register" })

-- Yank line or selection to system clipboard
-- "next greatest remap ever" - ThePrimeagen
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[y]ank Selection to Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank Line to Clipboard" })

-- Delete without sending text to any register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Unmap Q
vim.keymap.set("n", "Q", "<nop>")

-- Unmap F1
vim.keymap.set({ 'n', 'v', 'i' }, "<F1>", "<nop>")

-- Call tmux-sessionizer script
vim.keymap.set("n", "<C-f>", '<cmd>silent !tmux neww -n sessionizer "tmux-sessionizer 1"<CR>')

-- Format buffer
vim.keymap.set("n", "<leader><C-f>", vim.lsp.buf.format, { desc = "[F]ormat Buffer" })

-- Next and Prev location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next Location List Item" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Prev Location List Item" })

-- Find and replace word under cursor throughout entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace Word Under Cursor" })

-- Mark current file as executable
vim.keymap.set("n", "<leader>vmx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Current File E[x]ecutable" })

-- Disable arrow keys to break the habit of using them
vim.keymap.set({ "n", "i" }, "<left>", '<cmd> echo "Use h to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<right>", '<cmd> echo "Use l to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<up>", '<cmd> echo "Use k to move!!"<CR>')
vim.keymap.set({ "n", "i" }, "<down>", '<cmd> echo "Use j to move!!"<CR>')

-- easier window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

-- visual jump to next capital letter
vim.keymap.set("v", ".", [[/\u<CR>h<cmd>nohlsearch<CR>]])

-- I suck at typing lol
vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Qa', 'qa', {})
vim.api.nvim_create_user_command('Q', 'q', {})

-- Reimplement 'K' keymap to have border
vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover({
        border = 'rounded',
    })
end)

-- Mapping to re-indent file without moving cursor
vim.keymap.set('n', "=<C-g>", "mzgg=G`z", { desc = "Re-indent Entire Buffer" })

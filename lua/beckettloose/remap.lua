-- remap.lua
-- Custom remaps and macros

-- Set <leader> key to spacebar
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear highlight on <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Open file explorer (originally netrw, now oil.nvim)
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "File [E]xplorer" })

-- Shift visual lines up and down. Similar to <M-up>/<M-down> in VS Code.
-- Note that this will add a bunch of undo stages if used frequently
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Shift Lines Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Shift Lines Up" })

-- Join next line without moving cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = "[J]oin Next Line" })

-- Center cursor vertically when <C-u>/<C-d> scrolling and n/N searching
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page Up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous Result" })

-- Paste from yank register. Since this does not use the delete register, its
-- content will not be replaced by the overwritten text and can therefore be
-- reused many times.
-- "greatest remap ever" - ThePrimeagen
vim.keymap.set("x", "<leader>p", [["0p]], { desc = "[p]aste from Yank Register" })

-- Yank line or visual range to system clipboard
-- "next greatest remap ever" - ThePrimeagen
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[y]ank Selection to Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "[Y]ank Line to Clipboard" })

-- Delete without sending text to any register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Silent [D]elete" })

-- Unmap Q
vim.keymap.set("n", "Q", "<nop>")

-- Unmap F1
vim.keymap.set({ 'n', 'v', 'i' }, "<F1>", "<nop>")

-- Call tmux-sessionizer script
vim.keymap.set("n", "<C-f>", '<cmd>silent !tmux-sessionizer<CR>', { desc = "Tmux Sessionizer" })

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
vim.keymap.set({ "n", "v", "i" }, "<left>", '<cmd> echo "Use h to move!!"<CR>')
vim.keymap.set({ "n", "v", "i" }, "<right>", '<cmd> echo "Use l to move!!"<CR>')
vim.keymap.set({ "n", "v", "i" }, "<up>", '<cmd> echo "Use k to move!!"<CR>')
vim.keymap.set({ "n", "v", "i" }, "<down>", '<cmd> echo "Use j to move!!"<CR>')

-- Easier window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Focus Left Window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Focus Right Window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Focus Lower Window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Focus Upper Window' })

-- Visual mode before next capital letter
-- I use this to help select subwords of camel case strings
vim.keymap.set("v", ".", function ()
    local search = vim.fn.getreg("/")
    vim.fn.setreg("/", "\\u")
    vim.api.nvim_feedkeys('nh', 'v', false)
    vim.schedule(function ()
        vim.cmd.nohlsearch()
        vim.fn.setreg("/", search)
    end)
end, { desc = "Before Next Uppercase" })

-- I suck at typing lol (fixes common typos of :w/q/wq/qa)
vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Qa', 'qa', {})
vim.api.nvim_create_user_command('Q', 'q', {})

-- Add border to 'K' hover window
vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover({
        border = 'rounded',
    })
end, { desc = "LSP Hover Info" })

-- Re-indent file without moving cursor
vim.keymap.set('n', "=<C-g>", "mzgg=G`z", { desc = "Re-indent Entire Buffer" })

-- Open Lazy Plugin Manager
vim.keymap.set('n', "<leader>ll", "<cmd>Lazy<CR>", { desc = "[L]azy.nvim" })

-- Open Mason.nvim
vim.keymap.set('n', "<leader>lm", "<cmd>Mason<CR>", { desc = "[M]ason.nvim" })

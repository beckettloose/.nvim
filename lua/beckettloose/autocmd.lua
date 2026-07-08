-- autocmd.lua
-- Set up neovim autocommands

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight text on yank
local yank_group = augroup("HighlightYank", {})
autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.hl.hl_op({
            higroup = "IncSearch",
            timeout = 60,
        })
    end,
})

-- Remove trailing whitespace before writing buffer, without changing the cursor
-- position or the search pattern
local trim_whitespace_group = augroup("TrimWhiteSpace", {})
autocmd({ "BufWritePre" }, {
    group = trim_whitespace_group,
    pattern = "*",
    callback = function()
        local view = vim.fn.winsaveview()
        local search = vim.fn.getreg("/")
        vim.cmd [[%s/\s\+$//e]]
        vim.fn.winrestview(view)
        vim.fn.setreg("/", search)
    end,
})

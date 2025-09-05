require("beckettloose.set")
require("beckettloose.remap")
require("beckettloose.lsp")
require("beckettloose.lazy_init")

local augroup = vim.api.nvim_create_augroup
local TrimWhiteSpaceGroup = augroup("TrimWhiteSpace", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

-- Highlight selection on yank
autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

-- Remove trailing whitespace before writing buffer, without changing the
-- cursor position or the search pattern
autocmd({ "BufWritePre" }, {
    group = TrimWhiteSpaceGroup,
    pattern = "*",
    callback = function()
        local view = vim.fn.winsaveview()
        local search = vim.fn.getreg("/")
        vim.cmd [[%s/\s\+$//e]]
        vim.fn.winrestview(view)
        vim.fn.setreg("/", search)
    end,
})

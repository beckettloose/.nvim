require("beckettloose.set")
require("beckettloose.remap")
require("beckettloose.lazy_init")

local augroup = vim.api.nvim_create_augroup
local TrimWhiteSpaceGroup = augroup("TrimWhiteSpace", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
    require("plenary.reload").reload_module(name)
end

-- vim.filetype.add({
--     extension = {
--         templ = 'templ',
--     }
-- })

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

-- Remove trailing whitespaces before writing buffer
autocmd({ "BufWritePre" }, {
    group = TrimWhiteSpaceGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})


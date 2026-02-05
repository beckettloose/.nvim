return {
    -- Presents the buffer's undo history as a navigable tree
    "mbbill/undotree",
    event = "VimEnter",
    config = function()
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle [u]ndo Tree" })
        vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeFocus, { desc = "Focus [U]ndo Tree" })
    end,
}

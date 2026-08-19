return {
    -- Presents the buffer's undo history as a navigable tree
    "mbbill/undotree",
    event = "VimEnter",
    config = function()
        vim.keymap.set("n", "<leader>u", function ()
            vim.cmd.UndotreeToggle()
            vim.cmd.UndotreeFocus()
        end, { desc = "Goto [u]ndo Tree" })

        vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Show/Hide [u]ndo Tree" })
    end,
}

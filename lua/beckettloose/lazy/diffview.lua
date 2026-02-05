return {
    -- Git diff, history, and merge views
    "sindrets/diffview.nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local diffview = require("diffview")

        -- Keymaps to open and close diff view
        vim.keymap.set('n', "<leader>io", diffview.open, { desc = "[O]pen DiffView" })
        vim.keymap.set('n', "<leader>ic", diffview.close, { desc = "[C]lose DiffView" })
        vim.keymap.set('n', "<leader>ih", diffview.file_history, { desc = "File [H]istory" })

        diffview.setup({
            view = {
                default = {
                    layout = "diff2_horizontal",
                },
                merge_tool = {
                    layout = "diff3_mixed",
                },
                file_history = {
                    layout = "diff2_horizontal",
                }
            }
        })
    end
}

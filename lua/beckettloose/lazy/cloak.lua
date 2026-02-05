return {
    "laytan/cloak.nvim",
    enabled = false,
    event = "BufEnter .env*",
    config = function()
        require("cloak").setup({
            enabled = true,
            cloak_character = "*",
            -- The applied highlight group (colors) on the cloaking, see `:h highlight`.
            highlight_group = "Comment",
            patterns = {
                {
                    -- Match any file starting with ".env".
                    -- This can be a table to match multiple file patterns.
                    file_pattern = {
                        ".env*",
                    },
                    -- Match an equals sign and any character after it.
                    -- This can also be a table of patterns to cloak,
                    -- example: cloak_pattern = { ":.+", "-.+" } for yaml files.
                    cloak_pattern = "=.+",
                },
            },
        })
        vim.keymap.set("n", "<leader>vlt", "<cmd>CloakToggle<CR>", { desc = "[T]oggle" })
        vim.keymap.set("n", "<leader>vld", "<cmd>CloakDisable<CR>", { desc = "[D]isable" })
        vim.keymap.set("n", "<leader>vle", "<cmd>CloakEnable<CR>", { desc = "[E]nable" })
        vim.keymap.set("n", "<leader>vlp", "<cmd>CloakPreviewLine<CR>", { desc = "[P]review Line" })
    end,
}

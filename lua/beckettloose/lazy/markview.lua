return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    config = function ()
        local markview = require("markview")
        markview.setup()

        vim.keymap.set("n", "<leader>mt", "<cmd>Markview Toggle<CR>", { desc = "[T]oggle Globally" })
        vim.keymap.set("n", "<leader>me", "<cmd>Markview Enable<CR>", { desc = "[E]nable Globally" })
        vim.keymap.set("n", "<leader>md", "<cmd>Markview Disable<CR>", { desc = "[D]isable Globally" })
        vim.keymap.set("n", "<leader>ms", "<cmd>Markview splitToggle<CR>", { desc = "[S]plitview" })
    end
}

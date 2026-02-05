return {
    -- Simple mini-games for practicing vim motions
    "theprimeagen/vim-be-good",
    -- Don't load until we invoke the keybind
    keys = "<leader>vbg",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        vim.keymap.set("n", "<leader>vbg", "<cmd>VimBeGood<CR>", { desc = "Vim Be [G]ood" })
    end
}

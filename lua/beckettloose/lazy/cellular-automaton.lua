return {
    -- fun stuff
    "eandrju/cellular-automaton.nvim",
    -- event = "BufEnter",
    keys = { "<leader>v0r", "<leader>v0s", "<leader>v0g" },
    config = function()
        -- We do a little trolling
        vim.keymap.set("n", "<leader>v0r", "<cmd>CellularAutomaton make_it_rain<CR>")
        vim.keymap.set("n", "<leader>v0s", "<cmd>CellularAutomaton scramble<CR>")
        vim.keymap.set("n", "<leader>v0g", "<cmd>CellularAutomaton game_of_life<CR>")
    end
}

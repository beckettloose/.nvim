return {
    "folke/zen-mode.nvim",
    config = function()
        vim.keymap.set(
            "n",
            "<leader>zw",
            function()
                require("zen-mode").setup({
                    window = {
                    width = 140,
                        options = {},
                    },
                })
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = true
                vim.wo.rnu = true
                ColorMyPencils()
            end,
            {
                desc = "Zen Mode [W]ide",
            }
        )

        vim.keymap.set(
            "n",
            "<leader>zm",
            function()
                require("zen-mode").setup({
                    window = {
                    width = 120,
                        options = {},
                    },
                })
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = true
                vim.wo.rnu = true
                ColorMyPencils()
            end,
            {
                desc = "Zen Mode [M]edium",
            }
        )

        vim.keymap.set(
            "n",
            "<leader>zn",
            function()
                require("zen-mode").setup({
                    window = {
                        width = 87,
                        options = {},
                    },
                })
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = true
                vim.wo.rnu = true
                ColorMyPencils()
            end,
            {
                desc = "Zen Mode [n]arrow",
            }
        )

        vim.keymap.set(
            "n",
            "<leader>zN",
            function()
                require("zen-mode").setup({
                    window = {
                        width = 83,
                        options = {},
                    },
                })
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = false
                vim.wo.rnu = false
                ColorMyPencils()
            end,
            {
                desc = "Zen Mode [N]arrower",
            }
        )
    end,
}

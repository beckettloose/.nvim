return {
    "folke/snacks.nvim",
    opts = {
        picker = {
            sources = {
                -- custom filetype picker similar to telescope builtin
                filetypes = {
                    name = "filetypes",
                    format = "text",
                    preview = "none",
                    layout = { preset = "vscode"},
                    confirm = function(picker, item)
                        picker:close()
                        if item then
                            vim.schedule(function()
                                vim.cmd("setfiletype " .. item.text)
                            end)
                    end
                    end,
                    finder = function()
                      local items = {}
                      local filetypes = vim.fn.getcompletion("", "filetype")
                      for _, type in ipairs(filetypes) do
                        items[#items + 1] = {
                          text = type,
                        }
                      end
                      return items
                    end,
                },
            },
        },
        explorer = {},
        bigfile = {},
        indent = {
            only_current = true,
            scope = {
                enabled = false
            }
        },
        quickfile = {},
        -- Need to add: snacks zenmode to replace original zenmode
    },
    keys = {
        { "<leader><space>", function () Snacks.picker.smart() end, desc = "Smart Find Files" },
        { "<leader>,", function () Snacks.picker.buffers() end, desc = "Smart Find Buffers" },
        { "<C-p>", function () Snacks.picker.git_files() end, desc = "Find Git Files" },
        { "<leader>/", function () Snacks.picker.lines() end, desc = "Lines" },
        { "<leader>vh", function () Snacks.picker.help() end, desc = "[H]elp Search" },
        { "<leader>vk", function () Snacks.picker.keymaps() end, desc = "[K]eymap Search" },
        { "<leader>x", function () Snacks.picker.explorer() end, desc = "E[x]plorer" },
        { "<leader>vcl", function () Snacks.picker.filetypes() end, desc = "[L]anguage" },
    }
}

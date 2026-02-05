return {
    -- Another collection of useful plugins
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
        Snacks.toggle.option("spell", { name = "󰓆 Spell Checking" }):map("<leader>vts")
        Snacks.toggle.option("wrap", { name = "󰖶 Line Wrapping" }):map("<leader>vtw")
        Snacks.toggle.option("list", { name = "󱁐 List Whitespace" }):map("<leader>vtl")
        Snacks.toggle.option("expandtab", { name = "󰡎 Expand Tab" }):map("<leader>vte")
        Snacks.toggle.treesitter({ name = " Treesitter" }):map("<leader>vtt")
        Snacks.toggle.diagnostics({ name = " Diagnostics" }):map("<leader>vtd")
        Snacks.toggle.indent():map("<leader>vti")

        return {
            -- Disable LSPs and Treesitter in very large files
            bigfile = {},
            -- File tree in sidebar
            explorer = {},
            -- Indent level visualization
            indent = {
                indent = {
                    enabled = true,
                    char = "│",
                },
                scope = {
                    enabled = false,
                },
            },
            -- Replacement for vim.ui.input
            input = {},
            -- Generic pickers, similar to telescope
            picker = {
                sources = {
                    -- Custom filetype picker similar to the one included in telescope
                    -- From: https://github.com/folke/snacks.nvim/issues/1738#issuecomment-2841743722
                    filetypes = {
                        name = "filetypes",
                        format = "text",
                        preview = "none",
                        layout = { preset = "vscode" },
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
            -- When opening a file directly, load it immediately
            quickfile = {},
            scope = {},
            -- Toggle different options on and off using keybinds
            toggle = {},
            -- Disable distractions while editing
            zen = {},
        }
    end,
    keys = {
        -- Picker keybinds
        { "<leader><space>", function() Snacks.picker.smart() end,     desc = "Smart Find Files" },
        { "<leader>,",       function() Snacks.picker.buffers() end,   desc = "Smart Find Buffers" },
        { "<C-p>",           function() Snacks.picker.git_files() end, desc = "Find Git Files" },
        { "<leader>/",       function() Snacks.picker.lines() end,     desc = "Lines" },
        { "<leader>vh",      function() Snacks.picker.help() end,      desc = "[H]elp Search" },
        { "<leader>vk",      function() Snacks.picker.keymaps() end,   desc = "[K]eymap Search" },
        { "<leader>x",       function() Snacks.picker.explorer() end,  desc = "E[x]plorer" },
        ---@diagnostic disable-next-line: undefined-field
        { "<leader>vcl",     function() Snacks.picker.filetypes() end, desc = "[L]anguage" },
        -- Zen mode keybinds
        {
            "<leader>zw",
            function()
                Snacks.zen.zen({
                    win = { style = { width = 140 } },
                })
            end,
            desc = "[W]ide"
        },
        {
            "<leader>zm",
            function()
                Snacks.zen.zen({
                    win = { style = { width = 120 } },
                })
            end,
            desc = "[M]edium"
        },
        {
            "<leader>zn",
            function()
                Snacks.zen.zen({
                    win = { style = { width = 87 } },
                })
            end,
            desc = "[n]arrow"
        },
        {
            "<leader>zN",
            function()
                Snacks.zen.zen({
                    win = {
                        style = {
                            minimal = true,
                            width = 80
                        }
                    },
                })
            end,
            desc = "[N]arrower"
        },
        -- Custom input box to change indent size
        {
            "<leader>vci",
            function()
                Snacks.input({
                    prompt = "Change Indent Size",
                    default = "4",
                }, function(input)
                    if input then
                        if tonumber(input) ~= nil then
                            vim.opt.shiftwidth = tonumber(input)
                            vim.opt.tabstop = tonumber(input)
                            print("Changed indent size to " .. input .. "! =<C-g> to reindent file.")
                        else
                            print("Input was not a valid number!")
                        end
                    else
                    end
                end)
            end,
            desc = "[I]ndent Size"
        },
    },
}

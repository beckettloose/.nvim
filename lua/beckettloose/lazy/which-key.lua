return {
    -- Shows available keybinds as you type them.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
        local wk = require("which-key")
        wk.setup()

        -- Document existing key chains
        wk.add({

            { "<leader>v",   group = "[V]im" },
            { "<leader>v_",  hidden = true },

            { "<leader>n",   group = "Harpoo[n]" },
            { "<leader>n_",  hidden = true },

            { "<leader>h",   group = "Git [H]unk" },
            { "<leader>h_",  hidden = true },

            { "<leader>i",   group = "D[i]ffView" },
            { "<leader>i_",  hidden = true },

            { "[",           group = "Previous" },
            { "[_",          hidden = true },

            { "]",           group = "Next" },
            { "]_",          hidden = true },

            { "<leader>z",   group = "[Z]en Mode" },
            { "<leader>z_",  hidden = true },

            { "<leader>v0",  group = "Cellular Automaton" },
            { "<leader>v0_", hidden = true },
            { "<leader>v0r", desc = "Make it [R]ain" },
            { "<leader>v0s", desc = "[S]cramble" },
            { "<leader>v0g", desc = "[G]ame of Life" },

            { "<leader>p",   group = "Gre[p]" },
            { "<leader>p_",  hidden = true },

            { "<leader>vw",  group = "[W]rapping" },
            { "<leader>vw_", hidden = true },

            { "<leader>vc",  group = "[C]hange" },
            { "<leader>vc_", hidden = true },

            { "<leader>vm",  group = "[M]ark" },
            { "<leader>vm_", hidden = true },

            -- { "<leader>vl",  group = "C[l]oak" },
            -- { "<leader>vl_", hidden = true },

            { "<leader>vb",  group = "[B]e" },
            { "<leader>vb_", hidden = true },
            { "<leader>vbg", desc = "Vim Be [G]ood" },

            { "<leader>vt",  group = "[T]oggle" },
            { "<leader>vt_", hidden = true },

            { "<leader>m", group = "[M]arkview" },
            { "<leader>m_", hidden = true },

            { "<leader>l", group = "[L]azy" },
            { "<leader>l_", hidden = true },

            {
                -- visual mode
                mode = { "v" },
                { "<leader>h", desc = "Git [H]unk" },
            }
        })
    end,
}

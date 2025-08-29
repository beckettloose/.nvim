return {
    -- Language parsing and syntax highlighting
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        -- Directory to install parsers and queries to
        install_dir = vim.fn.stdpath('data') .. '/site',
        -- ensure_installed = { "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "markdown_inline", "vim", "vimdoc" },
        -- Autoinstall languages that are not installed
        -- auto_install = true,
        -- highlight = {
            -- enable = true,
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            --  If you are experiencing weird indenting issues, add the language to
            --  the list of additional_vim_regex_highlighting and disabled languages for indent.
            -- additional_vim_regex_highlighting = { "ruby" },
        -- },
        -- indent = { enable = true, disable = { "ruby" } },
    },
}

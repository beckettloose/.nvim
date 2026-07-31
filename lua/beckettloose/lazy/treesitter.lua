return {
    -- Language parsing and syntax highlighting
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        -- Directory to install parsers and queries to
        install_dir = vim.fn.stdpath('data') .. '/site',
    },
}

return {
    "neovim/nvim-lspconfig",
    event = "VimEnter",
    dependencies = {
        {'j-hui/fidget.nvim', opts = {}}
    },
    config = function ()
        vim.lsp.config("*", {}) -- placeholder for default overrides
        vim.lsp.enable({
            "clangd",
            "lua_ls",
            "cmake_language_server",
            "jdtls"
        })
    end,
}

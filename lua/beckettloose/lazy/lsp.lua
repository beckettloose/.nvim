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

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('beckettloose-lsp-attach', { clear = true }),
            callback = function (event)
                local map = function (keys, func, desc, mode)
                    mode = mode or 'n'
                    vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
                end

                map('<leader>cr', vim.lsp.buf.rename, '[r]ename')
                map('<leader>ca', vim.lsp.buf.code_action, '[a]ctions')
            end
        })
    end,
}

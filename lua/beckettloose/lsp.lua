-- lsp.lua
-- LSP setup and configuration

vim.lsp.config.clangd = {
    cmd = { 'clangd', '--header-insertion=never' },
    root_markers = {
        '.clangd',
        '.clang-tidy',
        '.clang-format',
        'compile_commands.json',
        'compile_flags.txt',
        'configure.ac',
        '.git',
    },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
}

vim.lsp.config.lua_ls = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            workspace = {
                library = {
                    vim.api.nvim_get_runtime_file("", true),
                    "${3rd}/luv/library",
                },
                checkThirdParty = false,
            },
            runtime = {
                version = 'LuaJIT',
            }
        }
    }
}

vim.lsp.config.cmake_language_server = {
    cmd = { 'cmake-language-server' },
    filetypes = { 'cmake' },
    root_markers = { 'build', '.git' },
}

vim.lsp.enable({ 'clangd', 'lua_ls', 'cmake_language_server' })

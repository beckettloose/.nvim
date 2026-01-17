# .nvim

My [neovim](https://github.com/neovim/neovim) configuration files. This was originally part of my dotfiles repo but I moved it out to track the changes separately.

## Design and Function

My neovim configuration is heavily inspired by ThePrimeagen's nvim config and [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

This repo is symlinked into my neovim config directory (`~/.config/nvim/`) using GNU Stow. The initial entrypoint for all Lua code is `init.lua`, which begins the loading process by requiring the `beckettloose` module whose entrypoint is `lua/beckettloose/init.lua`. Once invoked, this kicks off the main loading process which occurs in the following order:

1. Require `set.lua`: Configure basic neovim settings
2. Require `remap.lua`: Set up custom keybinds
3. Require `autocmd.lua`: Set up autocmds
4. Require `lsp.lua`: Configure and enable LSPs
5. Require `lazy_init.lua`: Bootstrap lazy.nvim and begin loading plugins

At the end of `lazy_init.lua`, plugins are loaded from the `lazy/` directory. The files in this directory are regular Lua files that simply return one or more lazy plugin spec(s). See the official [plugin spec](https://lazy.folke.io/spec) for more details.

## Features

My neovim config contains many useful features and plugins. A mostly complete list of examples is included below.

- Autocmds (`autocmd.lua`)
    - Highlight selection on yank
    - Remove trailing whitespace before buffer write (without overwriting the cursor position or search pattern)
- Neovim Settings (`set.lua`)
    - Relative line numbers
    - Disable swap and backup files, enable undofile
    - Default to case insensitive searching
    - Highlight results on search
    - Disable special display of whitespace characters
- Remaps and Keybinds (`remap.lua`)
    - Clear search highlighting on `<Esc>`
    - Shift selected lines up and down with `J` and `K`
    - Join next line (`J`) without moving cursor
    - Auto-center view when `<C-d>` and `<C-u>` scrolling and `n`/`N` searching
    - Paste from yank register ("greatest remap ever" - ThePrimeagen)
    - Yank to system clipboard
    - Keybind for tmux-sessionizer script
    - Find and replace word under cursor in entire file
    - Shortcut to `chmod +x` current file
    - Disable arrow keys to break the habit of using them
    - Re-indent entire buffer without moving cursor
- Plugins
    - `folke/lazy.nvim`: Plugin Manager
    - `saghen/blink.cmp`: Performant completions plugin
    - `laytan/cloak.nvim`: Hides values in environment files until manually shown (currently disabled)
    - `folke/tokyonight.nvim`: TokyoNight color theme
    - `Bekaboo/deadcolumn.nvim`: Fade in colorcolumn as you type
    - `sindrets/diffview.nvim`: Git diff and file history UI. Also great for resolving merge conflicts
    - `lewis6991/gitsigns.nvim`: Many different git related functions
        - Add signs to signcolumn to indicate added, changed, and deleted lines
        - Stage, unstage, reset, and prview hunks
        - Quickly navigate between hunks
        - Show line and file blame information
        - Can provide status line integration, but I don't personally use it
    - `ThePrimeagen/harpoon`: Instant file switcher
    - `folke/lazydev.nvim`: Autoconfigure LuaLS for editing neovim config files
    - `mfussenegger/nvim-lint`: Async linter interface for neovim
    - `mason-org/mason.nvim`: Portable package manager for LSPs, linters, and formatters
    - `echasnovski/mini.nvim`: A collection of useful plugins
        - `mini.ai`: Improved `a`/`i` textobjects
        - `mini.surround`: Quickly add, remove, and change surrounds like quotes or brackets
        - `mini.statusline`: Statusline integration. Customized to provide minimal diff information about current buffer
    - `stevearc/oil.nvim`: File explorer that lets you edit your filesystem like a regular text buffer
    - `folke/snacks.nvim`: Another collection of useful plugins
        - `bigfile`: Disable LSPs and Treesitter when opening very large files
        - `indent`: Indent level visualization
        - `input`: Replacement for `vim.ui.input`
            - Used for my custom indent size adjuster
        - `picker`: Generic pickers, similar to telescope
            - Includes custom filetype picker
        - `quickfile`: When opening a file directly, open it immediately before loading plugins
        - `toggle`: Toggle different options on and off using keybinds
            - `spell`
            - `wrap`
            - `list`
            - `expandtab`
            - Treesitter highlighting
            - Indent visualization
        - `zen`: Disable distractions while editing
    - `folke/todo-comments.nvim`: Highlight and search for `TODO` and similar comments in buffers
    - `nvim-treesitter/nvim-treesitter`: Language parsing and highlighting
    - `folke/trouble.nvim`: A pretty list for diagnostic information
    - `mbbill/undotree`: Presents the current buffer's undo history as a navigable tree. Much harder to accidentally lose intermediate versions of a file like traditional undo/redo. Definitely one of my favorite plugins
    - `tpope/vim-sleuth`: Automatically adjust `shiftwidth` and `expandtab` based on context of current buffer and other files of the same type
    - `theprimeagen/vim-be-good`: Simple mini-games for practicing vim motions
    - `folke/which-key.nvim`: Shows available keybinds as you type them. Not the most useful for nvim experts, but great for beginners or when you decide to revamp all of your keybindings and can't remember any of them

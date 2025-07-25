# .nvim

My [neovim](https://github.com/neovim/neovim) configuration files. This was originally part of my dotfiles repo but I moved it out to track the changes separately.

## Design and Function

My neovim configuration is heavily inspired by ThePrimeagen's nvim config and [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). Each plugin is given its own file which is then loaded at startup by `lazy_init.lua`.

## Cool features

- Autocmds
    - Highlight selection on yank
    - Remove trailing whitespaces before buffer write
- Neovim Settings
    - Relative line numbers
    - Disable swap and backup files, enable undofile
    - Default to case insensitive searching
    - Highlight results on search
    - Disable special display of whitespace characters
- Remaps and Keybinds
    - Auto-clear search highlighting on `<Esc>`
    - Auto-center view when `<C-d>` and `<C-u>` scrolling
    - Paste from yank register over selected text ("greatest remap ever" - ThePrimeagen)
    - Yank selection or line to system clipboard
    - Keybind for my tmux-sessionizer script
    - Find and replace word under cursor in entire file
    - Shortcut to `chmod +x` current file
- Plugins
    - `folke/lazy.nvim`: Plugin Manager
    - `williamboman/mason.nvim`: LSP Manager
    - `laytan/cloak.nvim`: Hides values in environment files until manually shown
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
    - `echasnovski/mini.nvim`: A collection of useful plugins
        - `mini.ai`: Extend and create `a`/`i` textobjects
        - `mini.surround`: Quickly add, remove, and change surrounds like quotes or brackets
        - `mini.statusline`: Statusline integration. Customized to provide minimal diff information about current buffer
    - `stevearc/oil.nvim`: File explorer that lets you edit your filesystem like a regular text buffer
    - `folke/snacks.nvim`: Another collection of useful plugins
        - `bigfile`: Disable LSPs and Treesitter when opening very large files
        - `indent`: Indent level visualization
        - `picker`: Generic pickers, similar to telescope. Includes a custom filetype picker
        - `quickfile`: When opening a file directly, open it immediately before loading plugins
        - `zen`: Disable distractions while editing
    - `folke/todo-comments.nvim`: Highlight and search for `TODO` and similar comments in buffers
    - `nvim-treesitter/nvim-treesitter`: Language parsing and highlighting
    - `folke/trouble.nvim`: A pretty list for diagnostic information
    - `mbbill/undotree`: Presents the current buffer's undo history as a navigable tree. Much harder to accidentally lose intermediate versions of a file like traditional undo/redo. Definitely one of my favorite plugins
    - `tpope/vim-sleuth`: Automatically adjust `shiftwidth` and `expandtab` based on context of current buffer and other files of the same type
    - `theprimeagen/vim-be-good`: Simple mini-games for practicing vim motions
    - `folke/which-key.nvim`: Shows available keybinds as you type them. Not the most useful for nvim experts, but great for beginners or when you decide to revamp all of your keybindings and can't remember any of them
    - `andrewferrier/wrapping.nvim`: Dynamically switch between soft and hard line wrapping

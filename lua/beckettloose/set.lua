-- set.lua
-- Global settings and configuration

-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Disable starter screen
vim.opt.shortmess:append("I")

-- Enable line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disable smartindent to help with LSPs
vim.opt.smartindent = false

-- Disable text wrapping
vim.opt.wrap = false

-- Disable swap and backup, enable undofile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable mouse mode
vim.opt.mouse = ""

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode.
-- This keymapping can be found remap.lua
vim.opt.hlsearch = true
-- vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Increase number of lines kept when scrolling
vim.opt.scrolloff = 8 -- was 10

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Decrease update time
-- Update Time: time before CursorHold autocmds are executed.
-- Also technically a timer for writing swapfile but that's disabled here
vim.opt.updatetime = 50 -- old value: 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
-- vim.opt.splitright = true
-- vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor
-- See `:help 'list'`
-- See `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Set in deadcolumn.lua. Since the plugin is lazy loadaed, we need to hide the
-- colorcolumn until the after its setup function is called.
vim.opt.colorcolumn = "0"

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true


--- NETRW OPTIONS ---

-- Open files without splitting or tabbing
vim.g.netrw_browse_split = 0

-- Configure netrw buffer to have relative line numbers
vim.g.netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'

-- Disable top banner
vim.g.netrw_banner = 0

-- Set the initial size of new windows made by netrw
vim.g.netrw_winsize = 40

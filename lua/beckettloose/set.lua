-- set.lua
-- Global settings and configuration

-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Disable starter screen
vim.opt.shortmess:append("I")

-- Enable relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set default indent to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Disable smartindent to help with LSPs
vim.opt.smartindent = false

-- Disable text wrapping by default. Can still be enabled with 'vtw' toggle
vim.opt.wrap = false

-- Ensure wrapped text remains indented
vim.opt.breakindent = true

-- Disable swap and backup files, enable undofile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

-- Disable mouse mode
vim.opt.mouse = ""

-- Don't print mode changes, since the mode is already in the status line
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Highlight search results
vim.opt.hlsearch = true
-- vim.opt.incsearch = true

-- Enables 24-bit RGB color support
vim.opt.termguicolors = true

-- Increase number of lines shown when scrolling
vim.opt.scrolloff = 8

-- Enable signcolumn
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Decrease time before CursorHold autocmds are executed.
-- Also technically a timer for writing the swapfile but that's disabled above
vim.opt.updatetime = 50 -- old value: 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor
-- See `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Colorcolumn is configured by deadcolumn.lua. Since the plugin is lazy
-- loadaed, we need to hide the colorcolumn until the after its setup function
-- runs.
vim.opt.colorcolumn = "0"

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Highlight the line your cursor is on
vim.opt.cursorline = true


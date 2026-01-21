-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- block cursor
vim.opt.guicursor = ""

-- vim.opt.statusline = "%F"
vim.opt.laststatus = 2

-- hide insert status from status bar
vim.opt.showmode = false

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search function
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.path = '**'

-- don't auto-comment
vim.opt.formatoptions:remove { "c", "r", "o" }

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.winborder = "rounded"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.updatetime = 0

vim.g.netrw_banner = false

vim.opt.termguicolors = true
vim.g.have_nerd_font = true

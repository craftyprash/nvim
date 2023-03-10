vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.theme = "onedark" -- gloabl theme to use oxocarbon, tokyonight, gruvbox, onedark

vim.opt.termguicolors = true -- True color support

vim.opt.clipboard = "unnamedplus" -- sync with system clipboard

vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current

vim.opt.number = true -- Print line number
vim.opt.relativenumber = true -- Relative line numbers

vim.opt.scrolloff = 4 -- Lines of context

vim.opt.cursorline = true -- Enable highlighting of the current line

vim.opt.laststatus = 3 -- global statusline
vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Size of an indent
vim.opt.tabstop = 2 -- Number of spaces tabs count for

vim.opt.smartcase = true -- Don't ignore case with capitals

vim.opt.smartindent = true -- Insert indents automatically

vim.opt.wrap = false -- Disable line wrap

vim.opt.undofile = true -- Enable persistent undo
vim.opt.undolevels = 10000

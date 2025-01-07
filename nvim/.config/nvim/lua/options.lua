vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

opt.backspace = '2'
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.autoread = true
opt.cursorline = true
opt.cursorcolumn = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true

-- use spaces for tabs and whatnot
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

opt.swapfile = false

vim.wo.number = true

vim.o.splitbelow = true
vim.o.splitright = true

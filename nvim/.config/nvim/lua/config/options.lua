vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local opt = vim.opt

opt.number = true -- Enables line numbers
opt.relativenumber = true -- Enables relative line numbers
opt.autoindent = true -- Indent automatically
opt.cursorline = true -- Enables cursor line
opt.ignorecase = true -- Ignore case when searching
opt.splitright = true -- Split to the right on vertical
opt.splitbelow = true -- Split below when horizontal
vim.g.mapleader = " "
vim.g.localleader = " "



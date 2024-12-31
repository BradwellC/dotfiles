local opt = vim.opt

-- Left column settings
opt.number = true -- display number lines
opt.relativenumber = true -- display relative number lines
opt.numberwidth = 2 -- with of line column
opt.wrap = false -- display lines as a single line
opt.scrolloff = 10 -- number of lines to keep above/below cursor
opt.sidescrolloff = 8 -- number of columns to keep left/right of cursor

-- Tab spacing/behaviour
opt.tabstop = 2 -- 2 spaces for tabs
opt.expandtab = true -- expand tab to spaces
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.smartindent = true -- enable smart indent
opt.breakindent = true -- enable line breaking indent
opt.softtabstop = 2

-- General Behaviour
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.backup = false -- disable backup file creation
opt.clipboard = "unnamedplus" -- enable system clipboard access
opt.conceallevel = 0 -- show concealled characters in markdown files
opt.fileencoding = "utf-8" -- set file encoding to UTF-8
opt.mouse = "a" -- enable mosue support
opt.showmode = false -- hide mode display
opt.splitbelow = true -- force horizontal splits below current window
opt.splitright = true -- force vertical splits right of current window
opt.termguicolors = true -- enable term GUI colors
opt.timeoutlen = 1000 -- set timeout for mapped sequences
opt.undofile = true -- enable persistent undo
opt.updatetime = 100 -- set faster completion
opt.writebackup = false -- prevent editing of files being edited elsewhere
opt.cursorline = true -- highligh currentline

-- Searching Behaviour
opt.hlsearch = true -- highlight all matches in search
opt.ignorecase = true -- ignore case in search
opt.smartcase = true -- match case if expicitly stated

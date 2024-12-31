local keymap = vim.keymap

-- Setting leader keymappping
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Exit insert mode
keymap.set("i", "<C-q>", "<Esc>", { desc = "Exit insert mode" })

-- Remove search highlight after searching
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlight" })

-- Easliy split windows
keymap.set("n", "<leader>sh", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sv", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split window equally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Exit Vim's terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right in visual mode" })

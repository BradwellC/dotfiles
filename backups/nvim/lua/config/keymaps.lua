vim.g.mapleader = " "
vim.g.localleader = " "

local keymap = vim.keymap

-- Exit insert mode

-- Change indent numbers
keymap.set("n", "<leader>+", "<c-a>", { desc = "Increase Indent Number" })
keymap.set("n", "<leader>-", "<c-x>", { desc = "Decrease Indent Number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Highlighting
keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- Teminal mode
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Stay In Indent mode
keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })
keymap.set("v", ">", ">gv", { desc = "Indent right in visual mode" })

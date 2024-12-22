vim.g.mapleader = " "
vim.g.localleader = " "

local keymap = vim.keymap

-- Exit insert mode
keymap.set('i', '<c-q>', '<ESC>', { desc = "Exit insert mode with ctl q" })

-- Change indent numbers
keymap.set('n', '<leader>+', '<c-a>', { desc = "Increase Indent Number" })
keymap.set('n', '<leader>-', '<c-x>', { desc = "Decrease Indent Number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

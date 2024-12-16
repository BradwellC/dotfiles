return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<Leader>e', ':Neotree filesystem reveal left<CR>', { desc = "Open Neotree" })
    vim.keymap.set('n', '<leader>E', ':Neotree filesystem close<CR>', { desc = "Close Neotree" })
  end
}

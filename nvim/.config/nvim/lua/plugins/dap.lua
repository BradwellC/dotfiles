return {
  "mfussenegger/nvim-dap",
  dependencies = {  
     },
  config = function()
    local dap = require('dap')
    
    vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<leader>dc', dap.continue, {})
  end
}

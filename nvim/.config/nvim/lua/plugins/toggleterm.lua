return {
	"akinsho/toggleterm.nvim",
	version = "*",
	--[[ things you want to change go here]]
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
      open_mapping = [[<C-\>]],
      size = 40,
      shade_terminals = true,
		  direction = "vertical",
    })
	end,
}

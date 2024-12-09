return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		Flavour = "macchiato"
		vim.cmd.colorscheme("catppuccin")
	end,
}

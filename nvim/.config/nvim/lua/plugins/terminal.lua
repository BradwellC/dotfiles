return {
	"s1n7ax/nvim-terminal",
	config = function()
		vim.o.hidden = true

		local terminal = require("nvim-terminal")

		terminal.setup({
			window = {
				position = "botright",
				split = "sp",
				width = 50,
				height = 15,
			},
		})

		vim.api.nvim_set_keymap(
			"n",
			"<leader>t",
			':lua NTGlobal["terminal"]:toggle()<cr>',
			{ desc = "Toggle Terminal" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>t1",
			':lua NTGlobal["terminal"]:open(1)<cr>',
			{ desc = "Open terminal 1" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>hu",
			':lua NTGlobal["window"]:change_height(2)<cr>',
			{ desc = "Change terminal hight up" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>hd",
			':lua NTGlobal["window"]:change_height(-2)<cr>',
			{ desc = "Change terminal height down" }
		)

		vim.api.nvim_set_keymap(
			"n",
			"<leader>wu",
			':lua NTGlobal["window"]:change_width(2)<cr>',
			{ desc = "Change terminal width up" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>wd",
			':lua NTGlobal["window"]:change_width(-2)<cr>',
			{ desc = "Change terminal width down" }
		)
	end,
}

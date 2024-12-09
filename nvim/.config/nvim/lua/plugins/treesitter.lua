return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			auto_install = true,
			ensure_installed = {
				"c",
				"typescript",
				"tsx",
				"gitignore",
				"dockerfile",
				"bash",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"html",
				"javascript",
				"css",
        "toml",
			},
			highlight = { enable = true },
			indent = { enable = true },
      autotag = { enable = true },
		})
	end,
}

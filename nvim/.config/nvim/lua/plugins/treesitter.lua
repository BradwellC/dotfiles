return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "css",
        "gitignore",
      },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Set vim motion <Space> + e to toggle nvim tree
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
		-- Set vim motion <Space> + e + f to toggle nvim tree on current file
		vim.keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle [E]xplorer on current [F]ile" }
		)
		-- Set vim motion <Space> + e + c to collapse nvim tree
		vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "[E]xplorer [C]ollapse" })
		-- Set vim motion <Space> + e +r to refresh nvim tree
		vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "[R]efresh [E]xplorer" })
		require("nvim-tree").setup({
			hijack_netrw = true,
			auto_reload_on_write = true,
			view = {
				width = 35,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = false,
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
				dotfiles = true,
			},
			git = {
				ignore = false,
			},
		})
	end,
}

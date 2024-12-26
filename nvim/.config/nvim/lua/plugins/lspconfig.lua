return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			local mason_tool_installer = require("mason-tool-installer")

			mason_tool_installer.setup({
				ensure_installed = {
					"prettier", -- prettier formatter
					"stylua", -- lua formatter
					"isort", -- python formatter
					"black", -- python formatter
					"pylint", -- python linter
					"eslint_d", -- js linter
				},
			})
		end,
	},
  {
		"williamboman/mason-lspconfig.nvim",
    config = function()

			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"cssls",
					"tailwindcss",
					"rubocop",
					"jsonls",
					"taplo",
					"rust_analyzer",
					"graphql",
				},
			})
    end
  },
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local servers = {
				"graphql",
				"rust_analyzer",
				"lua_ls",
				"taplo",
				"ts_ls",
				"eslint",
				"tailwindcss",
				"cssls",
				"jsonls",
				"eslint_d",
			}

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

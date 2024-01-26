return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local handlers = {
				["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
				["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
			}
			local opts = {
				capabilities = capabilities,
				handlers = handlers,
			}

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup(opts)
			lspconfig.tsserver.setup(opts)
			lspconfig.gopls.setup(opts)
			lspconfig.pyright.setup(opts)

			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
			vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations, {})
		end,
	},
}

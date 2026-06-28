return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "rust_analyzer", "qmlls" },
			automatic_enable = true,
		})

		vim.lsp.config("qmlls", {
			filetypes = { "qml", "qmljs" },
		})

		vim.lsp.config("rust_analyzer", {
			settings = {
				["rust-analyzer"] = {
					check = {
						command = "clippy",
					},
				},
			},
		})

		vim.lsp.enable("rust_analyzer")
	end,
}

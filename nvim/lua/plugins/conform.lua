return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			sh = { "beautysh" },
			c = { "clangformat" },
			java = { "clang-format" },
		},
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
	},
}

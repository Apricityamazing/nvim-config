return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePost", "BufReadPost", "InsertLeave" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			sh = { "shellcheck" },
			lua = { "luacheck" },
			c = { "cpplint" },
		}
		lint.linters.cpplint.args = {
			"--filter={-legal/copyright,whitespace/comments}",
		}
		vim.api.nvim_create_autocmd({
			"BufWritePost",
			"BufReadPost",
			"InsertLeave",
		}, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}

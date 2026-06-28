return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		style = "tokyonight",
	},
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}

return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	opts = {
		initial_mode = "normal",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}

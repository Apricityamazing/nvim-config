--Set the Leader key to comma
vim.g.mapleader = "<space>"
-- See terminal colors
vim.opt.termguicolors = true

-- Require lazy.nvim
require("config.lazy")
-- Require keybind configuration
require("config.keymaps")
-- Require config
require("config.config")

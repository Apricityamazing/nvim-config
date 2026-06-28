-- set shorter name for keymap function
local kmap = vim.keymap.set
-- Open chadtree
kmap({ "n", "i", "v", "x", "t", "c" }, "<C-e>", "<Esc><cmd>CHADopen<CR>")

kmap({ "n", "v" }, "mm", "<cmd>BookmarksMark<cr>", { desc = "Mark current line into active Bookmark list." })

kmap({ "n", "v" }, "mo", "<cmd>BookmarksGoto<cr>", { desc = "Go to bookmark at current active BookmarkList" })

kmap({ "n", "v" }, "ma", "<cmd>BookmarksCommands<cr>", { desc = "Find and trigger a bookmark command." })

kmap({ "n", "v" }, "md", "<cmd>BookmarksDesc<cr>", { desc = "Add description to bookmark under cursor." })

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require('which-key').register {
	['<leader>o'] = { name = '[H]arpoon', _ = 'which_key_ignore' },
}

vim.keymap.set("n", "<C-q>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>ja", mark.add_file, { desc = "Add file to Harpoon" })
vim.keymap.set("n", "<leader>jj", function() ui.nav_file(1) end, { desc = "Go to first file" })
vim.keymap.set("n", "<leader>jk", function() ui.nav_file(2) end, { desc = "Go to second file" })
vim.keymap.set("n", "<leader>jl", function() ui.nav_file(3) end, { desc = "Go to third file" })
vim.keymap.set("n", "<leader>j;", function() ui.nav_file(4) end, { desc = "Go to fourth file" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find a file in the current project" })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Find a word in the current project" })
vim.keymap.set('n', '<leader>pb', "<cmd>silent !yarn prettier % --write<CR>", { desc = "Prettify a file - Requires Prettier" })

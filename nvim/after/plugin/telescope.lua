local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find a file in the current project' })

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string { search = vim.fn.input 'Grep > ' }
end, { desc = 'Find a word in the current project' })

vim.keymap.set('n', '<leader>pp', '<cmd>silent !yarn prettier % --write<CR>', { desc = 'Prettify a file - Requires Prettier' })

-- Telescope Git shortcuts
vim.keymap.set('n', '<leader>pg', builtin.git_status, { desc = 'See git status' })
vim.keymap.set('n', '<leader>pb', builtin.git_branches, { desc = 'See git branches' })
vim.keymap.set('n', '<leader>ph', builtin.git_stash, { desc = 'See git stash' })

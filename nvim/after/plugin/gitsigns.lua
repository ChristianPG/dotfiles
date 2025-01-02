local gitsigns = require 'gitsigns'

vim.keymap.set('n', '<leader>hs', '<CMD>Gitsigns stage_hunk<CR>', { desc = 'Stage current hunk' })
vim.keymap.set('n', '<leader>hj', '<CMD>Gitsigns next_hunk<CR>', { desc = 'Next hunk' })
vim.keymap.set('n', '<leader>hk', '<CMD>Gitsigns prev_hunk<CR>', { desc = 'Previous hunk' })

local gitsigns = require 'gitsigns'

gitsigns.setup {}

-- Hunks
vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage current hunk' })
vim.keymap.set('n', '<leader>hj', gitsigns.next_hunk, { desc = 'Next hunk' })
vim.keymap.set('n', '<leader>hk', gitsigns.prev_hunk, { desc = 'Previous hunk' })
vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Preview hunk' })
vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset hunk' })

-- Buffers
vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Stage current buffer' })
vim.keymap.set('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'Reset current buffer' })

-- Toggles
vim.keymap.set('n', '<leader>hb', gitsigns.toggle_current_line_blame, { desc = 'Toggle current line blame' })
vim.keymap.set('n', '<leader>hd', gitsigns.toggle_deleted, { desc = 'Toggle inline changes' })
vim.keymap.set('n', '<leader>hw', gitsigns.toggle_word_diff, { desc = 'Toggle word diff' })

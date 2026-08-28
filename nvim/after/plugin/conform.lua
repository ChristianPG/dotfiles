local conform = require 'conform'

vim.keymap.set('n', '<leader>cf', conform.format, { desc = 'Format file' })

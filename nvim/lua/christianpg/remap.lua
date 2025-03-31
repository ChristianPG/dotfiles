-- Center screen when moving
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Move selected text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Center screen when searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Move to the beginning and end of the line
vim.keymap.set('n', 'H', '^')
vim.keymap.set('v', 'H', '^')
vim.keymap.set('n', 'L', '$')
vim.keymap.set('v', 'L', '$')

-- Save buffers with Ctrl + S
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-S-s>', ':wa<CR>')
vim.keymap.set('v', '<C-s>', ':<BS><BS><BS><BS><BS>w<CR>gv')
vim.keymap.set('v', '<C-S-s>', ':<BS><BS><BS><BS><BS>wa<CR>gv')
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>a')
vim.keymap.set('i', '<C-S-s>', '<ESC>:wa<CR>a')

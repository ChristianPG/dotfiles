-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  -- {
  --   "Mofiqul/dracula.nvim",
  --   name = "dracula",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'dracula'
  --   end,
  -- },
  'ThePrimeagen/vim-be-good',
  'christoomey/vim-tmux-navigator',
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = { multiline_threshold = 2 },
  },
  'ThePrimeagen/harpoon',
  'github/copilot.vim',
  { 'shortcuts/no-neck-pain.nvim', version = '*' },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
}

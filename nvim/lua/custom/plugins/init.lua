-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup {
        background_colour = '#000000',
      }
    end,
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        routes = {
          {
            view = 'notify',
            filter = { event = 'msg_showmode' },
            opts = { skip = true },
          },
          {
            view = 'notify',
            filter = { event = 'msg_show', find = 'yanked' },
            opts = { skip = true },
          },
          {
            view = 'notify',
            filter = { event = 'msg_show', find = 'fewer lines' },
            opts = { skip = true },
          },
          {
            view = 'notify',
            filter = { event = 'msg_show', find = 'more lines' },
            opts = { skip = true },
          },
          {
            view = 'notify',
            filter = { find = 'No information available' },
            opts = { skip = true },
          },
        },
      }
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'macchiato', -- latte, frappe, macchiato, mocha
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { 'italic' },
          conditionals = { 'italic' },
          loops = { 'italic' },
          functions = {},
          keywords = { 'italic' },
          strings = {},
          variables = {},
          numbers = {},
          booleans = { 'italic' },
          properties = {},
          types = { 'italic' },
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
      }

      vim.cmd.colorscheme 'catppuccin-nvim'
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
  {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
  },
  -- {
  --   'zbirenbaum/copilot.lua',
  --   cmd = 'Copilot',
  --   event = 'InsertEnter',
  --   config = function()
  --     require('copilot').setup {
  --       panel = {
  --         enabled = true,
  --         auto_refresh = true,
  --         keymap = {
  --           jump_prev = '[[',
  --           jump_next = ']]',
  --           accept = '<CR>',
  --           refresh = 'gr',
  --           open = '<M-CR>',
  --         },
  --         layout = {
  --           position = 'bottom', -- | top | left | right | horizontal | vertical
  --           ratio = 0.4,
  --         },
  --       },
  --       suggestion = {
  --         enabled = true,
  --         auto_trigger = true,
  --         hide_during_completion = true,
  --         debounce = 75,
  --         keymap = {
  --           accept = '<M-;>',
  --           accept_word = false,
  --           accept_line = false,
  --           next = '<M-]>',
  --           prev = '<M-[>',
  --           dismiss = '<C-]>',
  --         },
  --       },
  --       filetypes = {
  --         yaml = false,
  --         markdown = false,
  --         help = false,
  --         gitcommit = false,
  --         gitrebase = false,
  --         hgcommit = false,
  --         svn = false,
  --         cvs = false,
  --         ['.'] = false,
  --       },
  --       copilot_node_command = 'node', -- Node.js version must be > 18.x
  --       server_opts_overrides = {},
  --     }
  --   end,
  -- },
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('codecompanion').setup {
        strategies = {
          chat = {
            adapter = 'copilot',
          },
          inline = {
            adapter = 'copilot',
          },
        },
      }
    end,
  },
  'tpope/vim-fugitive',
  { 'shortcuts/no-neck-pain.nvim', version = '*' },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  {
    'laytan/cloak.nvim',
    config = function()
      require('cloak').setup {
        enabled = true,
        cloak_character = '*',
        -- The applied highlight group (colors) on the cloaking, see `:h highlight`.
        highlight_group = 'Error',
        patterns = {
          {
            -- Match any file starting with ".env".
            -- This can be a table to match multiple file patterns.
            file_pattern = {
              '.env*',
              'wrangler.toml',
              '.dev.vars',
            },
            -- Match an equals sign and any character after it.
            -- This can also be a table of patterns to cloak,
            -- example: cloak_pattern = { ":.+", "-.+" } for yaml files.
            cloak_pattern = '=.+',
          },
        },
      }
    end,
  },
  'HiPhish/rainbow-delimiters.nvim',
  {
    'rasulomaroff/reactive.nvim',
    config = function()
      require('reactive').setup {
        load = { 'catppuccin-macchiato-cursor', 'catppuccin-macchiato-cursorline' },
      }
    end,
  },
  {
    'mikavilpas/yazi.nvim',
    version = '*', -- use the latest stable version
    event = 'VeryLazy',
    dependencies = {
      { 'nvim-lua/plenary.nvim', lazy = true },
    },
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        '<leader>-',
        mode = { 'n', 'v' },
        '<cmd>Yazi<cr>',
        desc = 'Open yazi at the current file',
      },
      {
        -- Open in the current working directory
        '<leader>cw',
        '<cmd>Yazi cwd<cr>',
        desc = "Open the file manager in nvim's working directory",
      },
      {
        '<c-up>',
        '<cmd>Yazi toggle<cr>',
        desc = 'Resume the last yazi session',
      },
    },
    ---@type YaziConfig | {}
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = '<f1>',
      },
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
      -- mark netrw as loaded so it's not loaded at all.
      --
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      vim.g.loaded_netrwPlugin = 1
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
}

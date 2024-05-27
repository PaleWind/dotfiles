require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

vim.o.termguicolors = true
-- set termguicolors = true

-- vim.env.PATH = vim.env.PATH .. '/Users/aoi/.nvm/versions/node/v20.13.1/bin/npm'

local opts = {
  ui = {
    border = 'rounded', -- You can use 'single', 'double', 'rounded', 'solid', 'shadow', etc.
    backdrop = 10,
  },
}

local plugins = {
  -- Use `opts = {}` to force a plugin to be loaded.
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  -- { 'xiyaowong/nvim-transparent' },

  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = true,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { { 'prettierd', 'prettier' } },
        c_sharp = { 'csharpier' },
      },
    },
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]parenthen
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()
    end,
  },

  {
    { import = 'plugins.chatgippity' },
    { import = 'plugins.cmp' },
    { import = 'plugins.color-scheme' },
    { import = 'plugins.dap' },
    { import = 'plugins.fugitive' },
    { import = 'plugins.harpoon' },
    { import = 'plugins.indent-line' },
    { import = 'plugins.lazygit' },
    { import = 'plugins.lsp' },
    { import = 'plugins.lua-line' },
    { import = 'plugins.neo-test' },
    { import = 'plugins.neo-tree' },
    { import = 'plugins.neogit' },
    -- { import = 'plugins.octo' },
    -- { import = 'plugins.oil' },
    { import = 'plugins.telescope' },
    { import = 'plugins.toggleterm' },
    { import = 'plugins.transparent' },
    { import = 'plugins.tree-sitter' },
    { import = 'plugins.ufo' },
    { import = 'plugins.which-key' },
  },
}

require('lazy').setup(plugins, opts)
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

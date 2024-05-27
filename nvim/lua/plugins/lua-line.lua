return {
  'nvim-lualine/lualine.nvim',
  -- dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  opts = {
    options = {
      icons_enabled = false,
      -- theme = 'solarized_light',
      theme = 'Tomorrow',
      component_separators = { left = '↝', right = ' MODE:' },
      --section_separators = { left = '', right = '' },
      section_separators = { left = '', right = 'on:' },
      disabled_filetypes = {
        'neo-tree',

        statusline = {
          'NvimTree',
          'NeogitStatus',
        },

        winbar = {
          'neo-tree',
          'NvimTree',
          'NeogitStatus',
        },
      },

      ignore_focus = {
        'neo-tree',
        'NvimTree',
        'NeogitStatus',
        'dap-repl',
        'dapui_watches',
        'dapui_breakpoints',
        'dapui_scopes',
        'dapui_console',
        'dapui_stacks',
      },
    },

    winbar = {
      lualine_a = { 'filename', 'diagnostics', 'location', 'progress' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = { 'dif' },
      lualine_z = { 'branch', 'mode' },
    },
    inactive_winbar = {
      lualine_c = { 'filename' },
    },
    sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    inactive_sections = {
      -- lualine_b = { 'filename' },
    },
  },
}

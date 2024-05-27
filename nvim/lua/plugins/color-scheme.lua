return {
  'catppuccin/nvim',
  lazy = true, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.cmd.hi 'Visual guibg=Blue'

    vim.cmd.colorscheme 'catppuccin-frappe'
  end,
}

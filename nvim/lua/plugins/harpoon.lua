return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<C-a>', function()
      harpoon:list():append()
    end)
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<M-a>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<M-o>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<M-e>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<M-u>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<M-i>', function()
      harpoon:list():select(5)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}

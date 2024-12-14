require("lazy.lazy")
require('config.formating')

-- KEYMAPS
vim.keymap.set("n", "<leader><leader>m", "<cmd>put =execute('messages')<CR>", { desc = "Print [M]essages" })
vim.keymap.set("n", "<leader><leader>s", "<cmd>source %<CR>", { desc = "[S]ource File" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "E[x]ecute Lua" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "E[x]ecute Lua" })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- buffer movement
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- mini.files
vim.keymap.set('n', '\\', function() require('mini.files').open() end, { desc = 'Open mini.files' })

-- mini.notify
vim.keymap.set('n', '<leader>nh', function()
  MiniNotify.show_history()
end, { desc = 'Show MiniNotify history' })

-- highlight yank
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- OPTIONS
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.inccommand = 'split'
vim.opt.signcolumn = 'yes'
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.clipboard = 'unnamedplus'

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

require("which-key").register({
  s = { name = "[S]earch" },
}, { prefix = "<leader>" })

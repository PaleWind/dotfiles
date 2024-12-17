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

vim.keymap.set('n', '<C-q>', '<C-w><C-q>', { desc = 'Move focus to the upper window' })

-- oil
vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = "Oil" })

-- mini.files
vim.keymap.set('n', '\\', function() require('mini.files').open() end, { desc = 'Open mini.files' })

-- mini.notify
vim.keymap.set('n', '<leader>nh', function()
  MiniNotify.show_history()
end, { desc = 'Show MiniNotify history' })

-- mini.diff
vim.keymap.set('n', '<leader>dt', '<cmd>lua MiniDiff.toggle_overlay()<CR>')

-- mini.git
vim.keymap.set('n', '<leader>gb', function()
  require('snacks.git').blame_line()
end, { desc = 'Toggle Git Blame for current line' })

--snacks lazygit
vim.keymap.set("n", "<leader>gg", function()
  require("snacks").lazygit.open()
end, { desc = "Open LazyGit" })

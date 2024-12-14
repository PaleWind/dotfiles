return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        vim.keymap.set("n", "<leader>sf", require('telescope.builtin').find_files, { desc = " [F]iles" })
        vim.keymap.set("n", "<leader>so", require('telescope.builtin').buffers, { desc = " [O]pen buffers" })
        vim.keymap.set("n", "<leader>sg", require('telescope.builtin').live_grep, { desc = " [G]rep" })
        vim.keymap.set("n", "<leader>sr", require('telescope.builtin').resume, { desc = " [R]esume" })
    end
}

-- Create a function to format with different tab sizes depending on the LSP client
local function custom_format()
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = bufnr })

    local has_angular_ls = false
    local has_omnisharp = false
    local has_lua_ls = false

    for _, client in ipairs(clients) do
        if client.name == 'angular_ls' then
            has_angular_ls = true
        elseif client.name == 'omnisharp' then
            has_omnisharp = true
        elseif client.name == 'lua_ls' then
            has_lua_ls = true
        end
    end

    -- Default formatting options if no specific client is found
    local formatting_opts = {
        insertSpaces = true,
        tabSize = 2, -- default to 2 if neither client is present
        trimTrailingWhitespace = true,
    }

    if has_angular_ls then
        formatting_opts.tabSize = 4
    elseif has_omnisharp then
        formatting_opts.tabSize = 4
    elseif has_lua_ls then
        formatting_opts.tabSize = 4
    end

    vim.lsp.buf.format({
        formatting_options = formatting_opts,
        async = false,
        bufnr = bufnr,
    })
end

-- Set a keymap to trigger the custom formatting
vim.keymap.set('n', '<leader>f', custom_format, { desc = 'Format with custom tab size depending on LSP' })

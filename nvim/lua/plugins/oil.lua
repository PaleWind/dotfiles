return {
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        config = function()
            require("oil").setup({
                win_options = {
                    signcolumn = "yes:1",
                },
                keymaps = {
                    ["gd"] = {
                        desc = "Toggle file detail view",
                        callback = function()
                            detail = not detail
                            if detail then
                                require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
                            else
                                require("oil").set_columns({ "icon" })
                            end
                        end,
                    },
                    ["v"] = {
                        callback = function()
                            local oil = require("oil")
                            local entry = oil.get_cursor_entry()
                            if entry and entry.type == "file" then
                                -- If it's a file, open in a horizontal split
                                oil.select({ horizontal = true })
                            else
                                -- If it's not a file (e.g. a directory), open normally
                                oil.select()
                            end
                        end,
                        mode = "n",
                        desc = "Open file under cursor in a horizontal split"
                    },
                    ["s"] = {
                        callback = function()
                            local oil = require("oil")
                            local entry = oil.get_cursor_entry()
                            if entry and entry.type == "file" then
                                -- If it's a file, open in a vertical split
                                oil.select({ vertical = true })
                            else
                                -- If it's not a file, open normally
                                oil.select()
                            end
                        end,
                        mode = "n",
                        desc = "Open file under cursor in a vertical split"
                    },
                },
            })
        end,
    },
    {
        "refractalize/oil-git-status.nvim",
        dependencies = {
            "stevearc/oil.nvim",
        },
        config = true,
    },
}

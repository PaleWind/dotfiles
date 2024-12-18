return {
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("codecompanion").setup({
                strategies = {
                    inline = {
                        adapter = "openai",
                    },
                    chat = {
                        adapter = "openai", -- switch from "copilot" to "openai"
                    },
                },
                display = {
                    diff = {
                        provider = "mini_diff",
                    },
                },
            })
        end
    },
    {
        { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    }
}

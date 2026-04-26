return {
    -- VS Code theme
    {
        "Mofiqul/vscode.nvim",
        priority = 1000, -- load before other plugins
        config = function()
            require("vscode").setup({
                -- transparent = true,
                italic_comments = true,
            })
        end,
        "folke/tokyonight.nvim",
        lazy = true,
        opts = { style = "night" },
    },
    {
        "vague-theme/vague.nvim",
    },
    {
        "ember-theme/nvim",
        name = "ember",
        priority = 1000,
        config = function()
            require("ember").setup({
                variant = "ember", -- "ember" | "ember-soft" | "ember-light"
            })
            -- vim.cmd("colorscheme ember")
        end,
    },
    {
        "rose-pine/neovim",
        -- priority = 1000, -- load before other plugins
        -- config = function()
        --     vim.cmd("colorscheme rose-pine")
        -- end,
    },

    -- LazyVim base
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "vscode",
        },
    },
}

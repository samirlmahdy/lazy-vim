return {
    -- VS Code theme
    {
        -- "Mofiqul/vscode.nvim",
        -- lazy = false, -- load immediately
        -- priority = 1000, -- load before other plugins
        -- config = function()
        --     require("vscode").setup({
        --         -- transparent = true,
        --         italic_comments = true,
        --     })
        -- end,
        -- "folke/tokyonight.nvim",
        -- lazy = true,
        -- opts = { style = "night" },
    },

    -- LazyVim base
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "rose-pine",
        },
    },
}

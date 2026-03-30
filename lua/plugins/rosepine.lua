return {
    "rose-pine/neovim",
    priority = 1000, -- load before other plugins
    config = function()
        vim.cmd("colorscheme rose-pine")
    end,
}

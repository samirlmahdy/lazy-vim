return {
    "ribru17/bamboo.nvim",
    enabled = false,
    lazy = false,
    config = function()
        require("bamboo").setup({
            -- optional configuration here
            variant = "dark",
        })
        require("bamboo").load()
    end,
}

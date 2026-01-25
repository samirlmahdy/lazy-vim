return {
    "kawre/leetcode.nvim",
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        lang = "python3",
        storage = {
            home = vim.fn.expand("~/Documents/Github/leetcode"), -- Change this to your preferred path
            cache = vim.fn.expand("~/.cache/leetcode"),
        },
    },
}

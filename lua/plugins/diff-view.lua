return {
    { "sindrets/diffview.nvim" },
    {
        "akinsho/git-conflict.nvim",
        version = "*",
        config = true,
        opts = {
            default_mappings = {
                ours = "o",
                theirs = "t",
                none = "0",
                both = "b",
                next = "n",
                prev = "p",
            },
        },
    },
}

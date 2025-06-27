return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            scss = { "stylelint" },
            sass = { "stylelint" },
            css = { "stylelint" },
            javascript = { "eslint" },
            javascriptreact = { "eslint" },
            typescript = { "eslint" },
            typescriptreact = { "eslint" },
        },
        -- ... rest of config
    },
}

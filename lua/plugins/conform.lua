return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            scss = { "stylelint" },
            sass = { "stylelint" },
            css = { "stylelint" },
            javascript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescript = { "eslint_d" },
            typescriptreact = { "eslint_d" },
        },
        -- ... rest of config
    },
}

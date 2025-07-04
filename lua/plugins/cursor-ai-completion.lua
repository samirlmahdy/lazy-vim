-- Enable file watching (macOS needs this for buffer tracking)
vim.o.updatetime = 250
vim.g.loaded_python3_provider = 0 -- Disable unused providers

return {
    {
        enabled = false,
        "hrsh7th/nvim-cmp", -- This must come FIRST
        dependencies = {
            "hrsh7th/nvim-cmp",
            "nvim-lua/plenary.nvim",
            "mfussenegger/nvim-dap", -- Optional for debugging
        },
    },
    {
        "samirlmahdy/cursor-ai-completion",
        ependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp", -- Explicitly declare as dependency
            config = function()
                require("cursor-ai-completion").setup({
                    enable_ai = true,
                    ai_provider = "ollama",
                    ollama_model = "codellama:7b-instruct-q4_0",
                    completion_key = "<Tab>",
                    confirm_key = "<M-CR>",
                    sources = {
                        { name = "nvim_lsp" },
                        { name = "buffer" },
                        { name = "path" },
                        { name = "ai_suggestions" },
                    },
                    macos = {
                        use_system_crypto = true, -- Better security on macOS
                        metal_acceleration = true, -- Enable Metal GPU support
                    },
                })
            end,
        },
    },
}

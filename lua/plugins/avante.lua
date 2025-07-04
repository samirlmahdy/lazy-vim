return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        strategies = {
            -- Change the default chat adapter
            chat = {
                adapter = "anthropic",
            },
        },
        opts = {
            -- Set debug logging
            log_level = "DEBUG",
        },
    },
}

-- return {
--     "yetone/avante.nvim",
--     event = "VeryLazy",
--     version = false,
--     opts = {
--         -- Use Copilot as the main provider
--         provider = "copilot",
--
--         -- Use a different provider for auto-suggestions to avoid cost issues
--         auto_suggestions_provider = "claude", -- or "openai" if you prefer
--
--         -- Provider configurations
--         providers = {
--             -- Copilot configuration
--             copilot = {
--                 endpoint = "https://api.githubcopilot.com",
--                 model = "gpt-4o-2024-11-20",
--                 proxy = nil,
--                 allow_insecure = false,
--                 timeout = 30000,
--                 extra_request_body = {
--                     temperature = 0.75,
--                     max_tokens = 20480,
--                 },
--             },
--
--             -- -- Claude for auto-suggestions (cost-effective)
--             -- claude = {
--             --     endpoint = "https://api.anthropic.com",
--             --     model = "claude-3-7-sonnet-20250219",
--             --     timeout = 30000,
--             --     extra_request_body = {
--             --         temperature = 0.75,
--             --         max_tokens = 20480,
--             --     },
--             -- },
--         },
--
--         -- Enable auto-suggestions with safe configuration
--         behaviour = {
--             auto_suggestions = true,
--             auto_set_highlight_group = true,
--             auto_set_keymaps = true,
--             auto_apply_diff_after_generation = false,
--             support_paste_from_clipboard = false,
--             minimize_diff = true,
--             enable_token_counting = true,
--             auto_approve_tool_permissions = false,
--         },
--
--         -- Suggestion timing configuration
--         suggestion = {
--             debounce = 600, -- Increase to reduce API frequency
--             throttle = 600,
--         },
--
--         -- Keymappings for suggestions
--         mappings = {
--             suggestion = {
--                 accept = "<tab>", -- Alt+L to accept
--                 next = "<C-]>", -- Alt+] for next suggestion
--                 prev = "<C-[>", -- Alt+[ for previous suggestion
--                 dismiss = "<esc>", -- Ctrl+] to dismiss
--             },
--             diff = {
--                 ours = "co",
--                 theirs = "ct",
--                 all_theirs = "ca",
--                 both = "cb",
--                 cursor = "cc",
--                 next = "]x",
--                 prev = "[x",
--             },
--         },
--     },
--
--     build = "make",
--     dependencies = {
--         "nvim-treesitter/nvim-treesitter",
--         "stevearc/dressing.nvim",
--         "nvim-lua/plenary.nvim",
--         "MunifTanjim/nui.nvim",
--         "zbirenbaum/copilot.lua", -- Required for Copilot integration
--         "hrsh7th/nvim-cmp",
--         "nvim-tree/nvim-web-devicons",
--         {
--             "HakonHarnes/img-clip.nvim",
--             event = "VeryLazy",
--             opts = {
--                 default = {
--                     embed_image_as_base64 = false,
--                     prompt_for_file_name = false,
--                     drag_and_drop = {
--                         insert_mode = true,
--                     },
--                 },
--             },
--         },
--         {
--             "MeanderingProgrammer/render-markdown.nvim",
--             opts = {
--                 file_types = { "markdown", "Avante" },
--             },
--             ft = { "markdown", "Avante" },
--         },
--     },
-- }
--

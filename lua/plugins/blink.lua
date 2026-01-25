return {
    "saghen/blink.cmp",
    dependencies = {
        "onsails/lspkind.nvim",
    },
    opts = {
        completion = {
            menu = {
                draw = {
                    columns = {
                        -- Rearrange these as necessary to match desired look
                        { "kind_icon", "label", gap = 1 },
                        { "kind" },
                    },
                    components = {
                        kind_icon = {
                            -- Use a function to return the lspkind formatted icon
                            text = function(item)
                                -- Get the symbolic icon using lspkind
                                local kind = require("lspkind").symbolic(item.kind, { mode = "symbol" })
                                return kind .. " "
                            end,
                        },
                    },
                },
            },
        },
    },
}

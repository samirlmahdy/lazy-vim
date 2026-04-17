return {
    -- LSP servers
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                -- Ruff: linting diagnostics + code actions (fixes/organise imports)
                ruff = {
                    init_options = {
                        settings = {
                            logLevel = "error",
                        },
                    },
                },

                -- basedpyright: type intelligence, hover, completions, navigation
                basedpyright = {
                    settings = {
                        basedpyright = {
                            analysis = {
                                typeCheckingMode = "off", -- individual rules below override selectively
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                                autoImportCompletions = true,
                                diagnosticMode = "workspace",
                                extraPaths = { "./src" },

                                -- Standard pyright rules (false = disable, true = enable)
                                reportMissingImports = false,
                                reportMissingModuleSource = false,
                                reportMissingTypeStubs = false,
                                reportImportCycles = false,
                                reportUnusedImport = false,
                                reportUnusedClass = false,
                                reportUnusedFunction = false,
                                reportUnusedVariable = false,
                                reportDuplicateImport = false,
                                reportWildcardImportFromLibrary = false,
                                reportAbstractUsage = false,
                                reportArgumentType = false,
                                reportAssertAlwaysTrue = false,
                                reportAssignmentExpressionType = false,
                                reportAttributeAccessIssue = false,
                                reportCallIssue = false,
                                reportGeneralTypeIssues = false,
                                reportIndexIssue = false,
                                reportIncompatibleMethodOverride = false,
                                reportIncompatibleVariableOverride = false,
                                reportInconsistentConstructor = false,
                                reportInconsistentOverload = false,
                                reportInvalidStringEscapeSequence = false,
                                reportInvalidTypeArguments = false,
                                reportInvalidTypeForm = false,
                                reportInvalidTypeVarUse = false,
                                reportMatchNotExhaustive = false,
                                reportMissingParameterType = false,
                                reportMissingTypeArgument = false,
                                reportNoOverloadImplementation = false,
                                reportOperatorIssue = false,
                                reportOptionalCall = false,
                                reportOptionalContextManager = false,
                                reportOptionalIterable = false,
                                reportOptionalMemberAccess = false,
                                reportOptionalOperand = false,
                                reportOptionalSubscript = false,
                                reportPossiblyUnbound = false,
                                reportPrivateImportUsage = false,
                                reportPrivateUsage = false,
                                reportPropertyTypeMismatch = false,
                                reportRedeclaration = false,
                                reportReturnType = false,
                                reportShadowedImports = false,
                                reportTypeNotSubscriptable = false,
                                reportUnbound = false,
                                reportUndefinedVariable = false,
                                reportUnhashable = false,
                                reportUnknownArgumentType = false,
                                reportUnknownLambdaType = false,
                                reportUnknownMemberType = false,
                                reportUnknownParameterType = false,
                                reportUnknownVariableType = false,
                                reportUnnecessaryCast = false,
                                reportUnnecessaryComparison = false,
                                reportUnnecessaryContains = false,
                                reportUnnecessaryIsInstance = false,
                                reportUnnecessaryTypeIgnoreComment = false,
                                reportUnsupportedDunderAll = false,
                                reportUntypedBaseClass = false,
                                reportUntypedClassDecorator = false,
                                reportUntypedFunctionDecorator = false,
                                reportUntypedNamedTuple = false,
                                reportUnusedCallResult = false,
                                reportUnusedCoroutine = false,
                                reportUnusedExpression = false,

                                -- basedpyright-specific rules
                                reportAny = false,
                                reportExplicitAny = false,
                                reportIgnoreCommentWithoutRule = false,
                                reportImplicitAbstractClass = false,
                                reportImplicitOverride = false,
                                reportImplicitRelativeImport = false,
                                reportInvalidCast = false,
                                reportMissingTypeAnnotation = false,
                                reportMissingTypeAnnotationInPublicCode = false,
                                reportMissingTypeAnnotationInPrivateCode = false,
                                reportUnreachable = "warning",
                                reportUnsafeMultipleInheritance = false,
                            },
                        },
                    },
                },
            },

            -- LSP keymaps
            keys = {
                { "gd", vim.lsp.buf.definition, desc = "Go to Definition" },
                { "gD", vim.lsp.buf.declaration, desc = "Go to Declaration" },
                { "gr", vim.lsp.buf.references, desc = "References" },
                { "gi", vim.lsp.buf.implementation, desc = "Implementation" },
                {
                    "gci",
                    function()
                        Snacks.picker.lsp_incoming_calls()
                    end,
                    desc = "Incoming Calls",
                },
                {
                    "gco",
                    function()
                        Snacks.picker.lsp_outgoing_calls()
                    end,
                    desc = "Outgoing Calls",
                },
            },

            setup = {
                -- Ruff: disable formatting only (black via conform handles it)
                -- Keep diagnostics and code actions fully active
                ruff = function(_, opts)
                    opts.on_attach = function(client)
                        client.server_capabilities.documentFormattingProvider = false
                        client.server_capabilities.documentRangeFormattingProvider = false
                    end
                end,

                -- basedpyright: disable formatting (black handles it)
                basedpyright = function(_, opts)
                    opts.on_attach = function(client)
                        client.server_capabilities.documentFormattingProvider = false
                        client.server_capabilities.documentRangeFormattingProvider = false
                    end
                end,
            },
        },
    },

    -- Conform.nvim: black formatting only
    {
        "stevearc/conform.nvim",
        keys = {
            {
                "<leader>cf",
                function()
                    require("conform").format({ lsp_fallback = false, timeout_ms = 3000 })
                end,
                desc = "Format with Conform",
            },
        },
        opts = {
            formatters_by_ft = {
                scss = { "stylelint" },
                sass = { "stylelint" },
                css = { "stylelint" },
                javascript = { "eslint_d" },
                javascriptreact = { "eslint_d" },
                typescript = { "eslint_d" },
                typescriptreact = { "eslint_d" },
                python = { "black" },
            },
            formatters = {
                black = {
                    prepend_args = { "--target-version", "py310" },
                    cwd = require("conform.util").root_file({ "pyproject.toml", "setup.cfg", ".git" }),
                    command = function()
                        local venv = vim.fn.finddir(".venv", vim.fn.getcwd() .. ";")
                        if venv ~= "" then
                            return venv .. "/bin/black"
                        end
                        return "black"
                    end,
                },
            },
        },
    },
}

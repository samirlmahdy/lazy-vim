return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                basedpyright = {
                    settings = {
                        basedpyright = {
                            analysis = {
                                -- Match VSCode's Pylance "basic" mode exactly
                                typeCheckingMode = "basic",

                                -- Disable the most noisy checks
                                reportArgumentTypeIssues = false,
                                reportAttributeAccessIssue = false,
                                reportUnknownMemberType = false,
                                reportUnknownVariableType = false,
                                reportUnknownArgumentType = false,
                                reportUnknownParameterType = false,
                                reportUnknownReturnType = false,
                                reportUnknownLambdaType = false,
                                reportMissingTypeStubs = false,
                                reportPrivateUsage = false,
                                reportInconsistentConstructor = false,

                                -- Keep useful checks
                                reportMissingImports = true,
                                reportUndefinedVariable = true,
                                reportUnusedImport = true,
                                reportUnusedVariable = true,

                                -- Performance & UX
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                                autoImportCompletions = true,
                                diagnosticMode = "workspace",

                                -- Monorepo/src layout
                                extraPaths = { "./src" },
                            },
                        },
                    },
                },
            },
        },
    },
}

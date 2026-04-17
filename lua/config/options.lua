-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Basic settings

local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.ignorecase = true
opt.nu = true
opt.termguicolors = true
opt.relativenumber = true
opt.wrap = false
opt.incsearch = true
opt.swapfile = false
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.background = "dark"
opt.termguicolors = true
opt.pumblend = 0
opt.scrolloff = 0 -- Disable smooth scrolling
opt.sidescrolloff = 0
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = "#555555", italic = true })

vim.diagnostic.config({
    virtual_text = false,
})

-- Neovim (init.lua)
vim.g.dbs = {
    namshi = "mysql://root:root@127.0.0.1:30306/namshi",
}

vim.diagnostic.config({
    -- virtual_lines = true, -- this gets messy on large code base with tons of errors
    -- Select either virtual lines or text below otherwise it gets messy
    virtual_text = {
        spacing = 4,
        prefix = "●", -- This is fine as a string
    },

    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- leader key
vim.g.mapleader = " "

local keymaps = vim.keymap

keymaps.set("n", "<C-d>", "<C-d>zz")
keymaps.set("n", "<C-u>", "<C-u>zz")
keymaps.set("v", "J", ":m '>+1<CR>gv=gv")
keymaps.set("v", "K", ":m '<-2<CR>gv=gv")
keymaps.set("n", "n", "nzzzv")
keymaps.set("n", "N", "Nzzzv")

-- Navigate vim panes better
keymaps.set("n", "<C-k>", "<C-w>k")
keymaps.set("n", "<C-j>", "<C-w>j")
keymaps.set("n", "<C-h>", "<C-w>h")
keymaps.set("n", "<C-l>", "<C-w>l")

keymaps.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

-- Quickfix list keymaps

keymaps.set("n", "<leader>co", ":copen<CR>", { noremap = true, silent = true })
keymaps.set("n", "<leader>cc", ":cclose<CR>", { noremap = true, silent = true })
keymaps.set("n", "]q", ":cnext<CR>", { noremap = true, silent = true })
keymaps.set("n", "[q", ":cprev<CR>", { noremap = true, silent = true })

keymaps.set("n", "<leader>fF", LazyVim.pick("files"), { desc = "Find Files (Root Dir)" })
keymaps.set("n", "<leader>ff", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })
keymaps.set("n", "<leader>ghh", "<cmd>Neogit<CR>", { desc = "Git" })
keymaps.set("n", "<leader>gq", "<cmd>GitConflictListQf<CR>", { desc = "Git (Tab)" })
keymaps.set("n", "<leader>cpc", "<cmd>Copilot disable<CR>", { desc = "Copilot disable" })
keymaps.set("n", "<leader>cpp", "<cmd>Copilot enable<CR>", { desc = "Copilot enable" })
keymaps.set("n", "<leader>ckd", "<cmd>Sidekick nes disable<CR>", { desc = "Sidekick disable" })
keymaps.set("n", "<leader>ckn", "<cmd>Sidekick nes enable<CR>", { desc = "Sidekick enable" })

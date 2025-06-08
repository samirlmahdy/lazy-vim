-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- leader key
vim.g.mapleader = " "

local keymaps = vim.keymap

keymaps.set("n", "<C-d>", "<C-d>zz")
keymaps.set("n", "<C-u>", "<C-u>zz")
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

vim.keymap.set("n", "<leader>co", ":copen<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>cc", ":cclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "]q", ":cnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "[q", ":cprev<CR>", { noremap = true, silent = true })

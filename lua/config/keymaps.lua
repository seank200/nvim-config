-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Window navigation
keymap.del("n", "<C-h>")
keymap.del("n", "<C-j>")
keymap.del("n", "<C-k>")
keymap.del("n", "<C-l>")
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<cr>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<cr>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<cr>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<cr>", opts)

-- Increment/Decrement
keymap.set("n", "+", "<C-a>", opts)
keymap.set("n", "-", "<C-x>", opts)

-- Managing tabs
keymap.set("n", "te", "tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Close buffer without closing window
keymap.set("n", "<leader>bd", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Escape insert mode
keymap.set("i", "jk", "<Esc>", opts)

-- Better window resize
local smart_splits_ok, smart_splits = pcall(require, "smart-splits")

keymap.del({ "n", "i", "v" }, "<A-j>")
keymap.del({ "n", "i", "v" }, "<A-k>")

if smart_splits_ok then
  keymap.set("n", "<M-h>", smart_splits.resize_left, opts) -- Decrease width
  keymap.set("n", "<M-j>", smart_splits.resize_down, opts) -- Decrease height
  keymap.set("n", "<M-k>", smart_splits.resize_up, opts) -- Increase height
  keymap.set("n", "<M-l>", smart_splits.resize_right, opts) -- Increase width
  keymap.set("n", "<A-h>", smart_splits.resize_left, opts) -- Decrease width
  keymap.set("n", "<A-j>", smart_splits.resize_down, opts) -- Decrease height
  keymap.set("n", "<A-k>", smart_splits.resize_up, opts) -- Increase height
  keymap.set("n", "<A-l>", smart_splits.resize_right, opts) -- Increase width
else
  keymap.set("n", "<M-h>", ":vertical resize -5", opts) -- Decrease width
  keymap.set("n", "<M-j>", ":resize -5", opts) -- Decrease height
  keymap.set("n", "<M-k>", ":vertical resize +5", opts) -- Increase height
  keymap.set("n", "<M-l>", ":resize +5", opts) -- Increase width
  keymap.set("n", "<A-h>", ":vertical resize -5", opts) -- Decrease width
  keymap.set("n", "<A-j>", ":resize -5", opts) -- Decrease height
  keymap.set("n", "<A-k>", ":vertical resize +5", opts) -- Increase height
  keymap.set("n", "<A-l>", ":resize +5", opts) -- Increase width
  vim.notify("Failed to load extension 'smart-splits'. Falling back to builtin resize commands.", vim.log.levels.WARN)
end

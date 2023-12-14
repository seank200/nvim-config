local keymaps = {}
local opts = { silent = true, noremap = true }

keymaps.default = function ()
  vim.g.mapleader = " "
  vim.keymap.set('i', 'jk', '<ESC>', opts)
  vim.keymap.set('n', '<leader>ss', '<cmd>split<CR>', opts)
  vim.keymap.set('n', '<leader>sv', '<cmd>vsplit<CR>', opts)
end

keymaps.telescope = function ()
  local builtin = require("telescope.builtin")
  vim.keymap.set('n', "<leader><Space>", builtin.find_files, opts)
  vim.keymap.set('n', "<leader>ff", builtin.git_files, opts)
  vim.keymap.set('n', "<leader>/", builtin.live_grep, opts)
  vim.keymap.set('n', '<leader>fr', builtin.oldfiles, opts)
  vim.keymap.set('n', "<leader>fb", builtin.buffers, opts)
end

keymaps.vim_tmux_navigator = function ()
  vim.keymap.set('n', '<C-h>', "<cmd>TmuxNavigateLeft<CR>", opts)
  vim.keymap.set('n', '<C-j>', "<cmd>TmuxNavigateDown<CR>", opts)
  vim.keymap.set('n', '<C-k>', "<cmd>TmuxNavigateUp<CR>", opts)
  vim.keymap.set('n', '<C-l>', "<cmd>TmuxNavigateRight<CR>", opts)
end

keymaps.smart_splits = function ()
  local smart_splits = require("smart-splits")
  vim.keymap.set('n', "<M-h>", smart_splits.resize_left, opts)
  vim.keymap.set('n', "<M-j>", smart_splits.resize_down, opts)
  vim.keymap.set('n', "<M-k>", smart_splits.resize_up, opts)
  vim.keymap.set('n', "<M-l>", smart_splits.resize_right, opts)
  vim.keymap.set('n', "<A-h>", smart_splits.resize_left, opts)
  vim.keymap.set('n', "<A-j>", smart_splits.resize_down, opts)
  vim.keymap.set('n', "<A-k>", smart_splits.resize_up, opts)
  vim.keymap.set('n', "<A-l>", smart_splits.resize_right, opts)
end

keymaps.neo_tree = function ()
  local command = require("neo-tree.command")

  local function toggle_filesystem()
    command.execute({ toggle = true })
  end

  local function toggle_buffers()
    command.execute({ toggle = true, source = 'buffers' })
  end

  local function toggle_gitstatus()
    command.execute({ toggle = true, source = 'git_status' })
  end

  vim.keymap.set('n', "<leader>e", toggle_filesystem, opts)
  vim.keymap.set('n', "<leader>be", toggle_buffers, opts)
  vim.keymap.set('n', '<leader>ge', toggle_gitstatus, opts)
end

return keymaps

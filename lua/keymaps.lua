local keymap = vim.api.nvim_set_keymap
local opts_default = { noremap = true, silent = true }
local opts_noremap = { noremap = true }

-- Escaping to normal mode
keymap("i", "jk", "<ESC>", opts_default)
keymap("t", "<leader>qq", "<C-\\><C-n>", opts_noremap)

-- Window management
keymap("n", "<leader>ws", "<C-w>s", opts_default) -- Horizontally
keymap("n", "<leader>wv", "<C-w>v", opts_default) -- Vertically
keymap("n", "<leader>wc", "<C-w>c", opts_noremap) -- Close
keymap("n", "<leader>wh", "<C-w>h", opts_default) -- Move to left window
keymap("n", "<leader>wj", "<C-w>j", opts_default) -- Move to upper window
keymap("n", "<leader>wk", "<C-w>k", opts_default) -- Move to lower window
keymap("n", "<leader>wl", "<C-w>l", opts_default) -- Move to right window
keymap("n", "<leader>ww", "<C-w>w", opts_default)

-- Buffer management
keymap("n", "<leader>bc", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts_default) -- Close buffer
keymap("n", "<leader>bp", ":bp<CR>", opts_default) -- previous buffer
keymap("n", "<leader>bn", ":bn<CR>", opts_default) -- previous buffer

-- nvim-tree
keymap("n", "<leader>tt", ":NvimTreeFocus<CR>", opts_default)
keymap("n", "<leader>tg", ":NvimTreeToggle<CR>", opts_default)
keymap("n", "<leader>tc", ":NvimTreeClose<CR>", opts_default)

-- telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts_default)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts_default)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts_default)
keymap("n", "<leader>fo", ":Telescope vim_options<CR>", opts_default)


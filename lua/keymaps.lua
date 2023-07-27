local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
local opt_silent = { noremap = true, silent = true }

-- Escaping to normal mode
keymap("t", "<leader>qq", "<C-\\><C-n>", opts) -- from terminal
keymap("i", "jk", "<Esc>", opts) -- from insert

-- Buffer management
keymap("n", "<leader>bd", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts) -- close buffer without closing window
keymap("n", "<leader>bp", ":bp<CR>", opts) -- previous buffer
keymap("n", "<leader>bn", ":bn<CR>", opts) -- next buffer
keymap("n", "<F3>", ":bp<CR>", opt_silent);
keymap("n", "<F4>", ":bn<CR>", opt_silent);
keymap("v", "<leader>bd", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts) -- close buffer without closing window
keymap("v", "<leader>bp", ":bp<CR>", opts) -- previous buffer
keymap("v", "<leader>bn", ":bn<CR>", opts) -- next buffer
keymap("v", "<F3>", ":bp<CR>", opt_silent);
keymap("v", "<F4>", ":bn<CR>", opt_silent);

-- Register management
keymap("n", "<C-p>", "\"0p", opts);

-- Window navigation
keymap("n", "<leader>ws", "<C-w>s", opts) -- split horizontally
keymap("n", "<leader>wv", "<C-w>v", opts) -- split vertically
keymap("v", "<leader>ws", "<C-w>s", opts) -- split horizontally
keymap("v", "<leader>wv", "<C-w>v", opts) -- split vertically

-- Nvim Tree
keymap("n", "<leader>tt", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>tf", ":NvimTreeFocus<CR>", opts)
keymap("n", "<leader>tc", ":NvimTreeClose<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)


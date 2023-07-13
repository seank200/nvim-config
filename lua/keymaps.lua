local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Escaping to normal mode
keymap("t", "<leader>qq", "<C-\\><C-n>", opts)
keymap("i", "jk", "<Esc>", opts)

-- Buffer management
keymap("n", "<leader>bc", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

-- Nvim Tree
keymap("n", "<leader>tt", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>tf", ":NvimTreeFocus<CR>", opts)
keymap("n", "<leader>tc", ":NvimTreeClose<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)


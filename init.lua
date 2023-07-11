vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("plugins")
require("settings")
require("keymaps")

-- Configure plugins
require("setup/nvim-web-devicons")
require("setup/nvim-tree")
require("setup/lsp-status")
require("setup/nvim-treesitter")
require("setup/lualine")


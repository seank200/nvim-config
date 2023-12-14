local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Coding
	use({
		"echasnovski/mini.nvim",
		branch = "stable",
		config = require("seank200.plugins.coding").mini,
	})
	use({
		"JoosepAlviste/nvim-ts-context-commentstring",
		config = require("seank200.plugins.coding").ts_context_commentstring,
	})
	use({
		"mbbill/undotree",
		config = require("seank200.plugins.coding").undo_tree,
	})

	-- ColorSchemes
	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = require("seank200.plugins.colorscheme").catppuccin,
	})

	-- Editor
	use({
		"christoomey/vim-tmux-navigator",
		config = require("seank200.plugins.editor").vim_tmux_navigator,
	})
	use({
		"mrjones2014/smart-splits.nvim",
		config = require("seank200.plugins.editor").smart_splits,
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = {
			{ "nvim-lua/plenary.nvim" },
		},
		config = require("seank200.plugins.editor").telescope,
	})
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = require("seank200.plugins.editor").telescope_file_browser,
	})
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		requires = {
			"nvim-telescope/telescope.nvim",
		},
		config = require("seank200.plugins.editor").telescope_fzf,
	})
	use({ "nvim-pack/nvim-spectre" })
	use({
		"sindrets/diffview.nvim",
		config = require("seank200.plugins.editor").diffview,
	})

	-- Formatting
	use({
		"stevearc/conform.nvim",
		config = require("seank200.plugins.formatting").conform,
	})

	-- LSP
	use({
		"williamboman/mason.nvim",
		config = require("seank200.plugins.lsp").mason,
	})
	use({
		"williamboman/mason-lspconfig.nvim",
		after = { "mason.nvim" },
		requires = { { "williamboman/mason.nvim" } },
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		after = { "mason-lspconfig.nvim" },
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-cmdline" },
			{ "L3MON4D3/LuaSnip" },
		},
		config = require("seank200.plugins.lsp").lsp_zero,
	})
	use({
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup()
		end,
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = require("seank200.plugins.treesitter").treesitter,
	})
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	})
	use({
		"nvim-treesitter/nvim-treesitter-context",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
		config = require("seank200.plugins.treesitter").treesitter_context,
	})

	-- UI
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = require("seank200.plugins.ui").neo_tree,
	})
	use({ "nvim-tree/nvim-web-devicons" })
	use({ "lewis6991/gitsigns.nvim" })
	use({
		"RRethy/vim-illuminate",
		config = require("seank200.plugins.ui").illuminate,
	})
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = require("seank200.plugins.ui").trouble,
	})
	use({
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = require("seank200.plugins.ui").todo_comments,
	})
	use({
		"akinsho/bufferline.nvim",
		tag = "*",
		requires = "nvim-tree/nvim-web-devicons",
		config = require("seank200.plugins.ui").bufferline,
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		config = require("seank200.plugins.ui").lualine,
	})
	use({
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = require("seank200.plugins.ui").dashboard,
	})

	-- Utils
	use({ "nvim-lua/plenary.nvim" })
	use({
		"folke/persistence.nvim",
		config = require("seank200.plugins.utils").persistence,
	})

	-- Automatically install and configure if packer was first installed
	if packer_bootstrap then
		require("packer").sync()
	end
end)

local configs = require("plugin-config")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- Packer: Auto compile packer when "plugins.lua" is edited
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    autocmd BufWritePost lua/plugin-config.lua source <afile> | PackerCompile | echo("Recompiled")
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Package managers
  use 'wbthomason/packer.nvim'

  -- LSP-related
  use {
    'williamboman/mason.nvim',
    run = ':MasonUpdate',
    config = configs.mason,
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    requires = { "williamboman/mason.nvim" },
    after = {"mason.nvim", "nvim-lspconfig" },
    config = configs.mason_lspconfig,
  }
  use {
    "neovim/nvim-lspconfig",
    after = { "mason.nvim" },
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = configs.nvim_treesitter,
  }
  use {
    'numToStr/Comment.nvim',
    config = configs.Comment,
    after = 'nvim-treesitter',
  }

  -- Colors/Icons
  use 'AlexvZyl/nordic.nvim'
  use {
    'nvim-tree/nvim-web-devicons',
    config = configs.nvim_web_devicons,
  }

  -- Navigation/Search
  use {
    'nvim-tree/nvim-tree.lua',
    config = configs.nvimtree,
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = configs.telescope
  }

  -- Status
  use {
    'nvim-lualine/lualine.nvim',
    requires = { "nvim-tree/nvim-web-devicons" },
    config = configs.lualine,
  }
  use {
    "folke/trouble.nvim",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  -- Utilities
  use 'nvim-lua/plenary.nvim'
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    setup = configs.markdown_preview,
    ft = {'markdown'},
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

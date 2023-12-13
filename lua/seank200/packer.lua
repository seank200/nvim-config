-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Coding
    use { 'echasnovski/mini.nvim', branch = 'stable' }
    use { "JoosepAlviste/nvim-ts-context-commentstring" }
    use { 'mbbill/undotree' }

    -- ColorSchemes
    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Editor
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzf-native.nvim'} }
    }
end)

return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "diff",
          "gitcommit",
          "gitignore",
          "json",
          "javascript",
          "lua",
          "typescript",
          "python",
          "query",
          "vim",
          "vimdoc",
        },
        sync_install = false,
        auto_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  }
}

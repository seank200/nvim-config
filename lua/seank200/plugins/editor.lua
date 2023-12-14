local keymaps = require("seank200.config.keymaps")

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local actions = require("telescope.actions")

      require("telescope").setup({
        defaults = {
          mappings = {
            -- normal mode mappings
            ["n"] = {
              ["q"] = actions.close,
            },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
          },
        },
      })
      keymaps.telescope()
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function ()
      require("telescope").load_extension("fzf")
    end,
  },
  {
    'christoomey/vim-tmux-navigator',
    config = function ()
      keymaps.vim_tmux_navigator()
    end,
  },
  {
    'mrjones2014/smart-splits.nvim',
    opts = {
      default_amount = 3,
      ignored_buftypes = { 'neo-tree', 'Telescope' },
      at_edge = "stop",
    },
    config = function ()
      keymaps.smart_splits()
    end,
  },
}

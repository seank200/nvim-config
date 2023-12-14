local keymaps = require("seank200.config.keymaps")

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function ()
      require("neo-tree").setup({
        close_if_last_window = false,
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
          hijack_netrw_behavior = 'open_current',
        },
        default_component_configs = {
          git_status = {
            symbols = {
              added = "A",
              deleted = "D",
              modified = "M",
              renamed = "R",
              untracked = "U",
              ignored = "-",
              unstaged = "",
              staged = "+",
              conflict = "!",
            },
          },
        },
      })

      vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
      vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
      vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
      vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵 ", texthl = "DiagnosticSignHint" })

      keymaps.neo_tree()
    end,
  },
  { "nvim-tree/nvim-web-devicons" },
}

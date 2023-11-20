local use_experimental_ui = false

return {
  {
    "folke/noice.nvim",
    enabled = use_experimental_ui,
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    enabled = use_experimental_ui,
    opts = {
      timeout = 10000, -- 10 seconds

      -- Prevent notify from producing alerts when transparent background is set
      background_colour = "#000000",
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- filename (flhating status bars)
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          filename = " " .. filename

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { filename } }
        end,
      })
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
      opts.sections.lualine_y = {
        { "progress", padding = 1 },
      }
      opts.sections.lualine_z = {
        { "location", padding = 1, separator = "" },
      }
    end,
  },

  -- Disable animations for scope indicator
  {
    "echasnovski/mini.indentscope",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.draw = {
        animation = require("mini.indentscope").gen_animation.none(),
      }
    end,
  },

  { "folke/flash.nvim", enabled = false },

  -- Startup logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        ███████╗███████╗ █████╗ ███╗   ██╗██╗  ██╗██████╗  ██████╗  ██████╗ 
        ██╔════╝██╔════╝██╔══██╗████╗  ██║██║ ██╔╝╚════██╗██╔═████╗██╔═████╗
        ███████╗█████╗  ███████║██╔██╗ ██║█████╔╝  █████╔╝██║██╔██║██║██╔██║
        ╚════██║██╔══╝  ██╔══██║██║╚██╗██║██╔═██╗ ██╔═══╝ ████╔╝██║████╔╝██║
        ███████║███████╗██║  ██║██║ ╚████║██║  ██╗███████╗╚██████╔╝╚██████╔╝
        ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═════╝ 
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}

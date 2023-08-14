local configs = {
  mason = function()
    require("mason").setup()
  end,

  mason_lspconfig = function()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "clangd",
        "cssls",
        "dockerls",
        "eslint",
        "fortls",  -- fortran
        "html",
        "jsonls",
        "lua_ls",
        "marksman",  -- markdown
        "matlab_ls",
        "pylsp",
        "tailwindcss",
        "texlab",  -- latex
        "tsserver",
        "vimls",
      },
    }
    -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("mason-lspconfig").setup_handlers {
      -- Default handler for all lsp servers
      function(server_name)
        require("lspconfig")[server_name].setup {
          -- capabilities = capabilities,
        }
      end,

      -- Overrides for specific languages
      ["lua_ls"] = function()
        require("lspconfig").lua_ls.setup {
          -- capabilites = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                -- Recognize global variables
                globals = { "vim" },
              },
            },
          },
        }
      end,

      ["matlab_ls"] = function()
        require("lspconfig").matlab_ls.setup {
          -- capabilities = capabilities,
          settings = {
            matlab = {
              indexWorkspace = false,
              installPath = "/Applications/MATLAB_R2023a.app",
              matlabConnectionTiming = "onStart",
              telemetry = false,
            }
          }
        }
      end,

      -- Prevent unknown rules error for tailwind directives
      ["cssls"] = function()
        require("lspconfig").cssls.setup {
          settings = {
            css = {
              validate = true,
              lint = {
                unknownAtRules = "ignore",
              },
            },
            scss = {
              validate = true,
              lint = {
                unknownAtRules = "ignore",
              },
            },
            less = {
              validate = true,
              lint = {
                unknownAtRules = "ignore",
              },
            },
          }
        }
      end,
    }
  end,

  nvim_treesitter = function()
    require("nvim-treesitter.configs").setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        -- "fortran",
        "git_rebase",
        "gitcommit",
        "gitignore",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "matlab",
        "python",
        "regex",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    }
  end,

  Comment = function()
    require("Comment").setup()
  end,

  nvim_web_devicons = function()
    require("nvim-web-devicons").setup()
  end,

  nvimtree = function()
    require("nvim-tree").setup {}
  end,

  telescope = function()
    require("telescope").setup {}
  end,

  lualine = function()
    require("lualine").setup {
      options = {
        disabled_filetypes = { "packer", "NvimTree", "Telescope" },
        section_separators = { left = " ", right = " ", },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename", "diagnostics" },
        lualine_x = {
          { "diff" },
          { "location", separator = "" },
          { "progress", separator = "" },
        },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_c = {
          {
            "buffers",
            hide_filename_extension = true,
            mode = 4,
          }
        },
        lualine_x = { "filetype" }
      },
    }
  end,

  -- nvim_cmp = function()
  --   local cmp = require("cmp")
  --
  --   cmp.setup({
  --     enabled = function ()
  --       local context = require "cmp.config.context"
  --       if vim.api.nvim_get_mode().mode == 'c' then
  --         return true
  --       else
  --         return not context.in_treesitter_capture("comment") and
  --           not context.in_syntax_group("Comment")
  --       end
  --     end,
  --     snippet = {
  --       expand = function(args) vim.fn["vsnip#anonymous"](args.body) end,
  --     },
  --     preselect = cmp.PreselectMode.None,
  --     mapping = cmp.mapping.preset.insert({
  --       ['<C-Space>'] = cmp.mapping.complete(),
  --       ['<CR>'] = cmp.mapping.confirm({ select = false, }),
  --     }),
  --     sources = cmp.config.sources({
  --       { name = 'nvim_lsp' },
  --       { name = 'vsnip' },
  --     }, {
  --       { name = 'buffer' }
  --     })
  --   })
  -- end,

  markdown_preview = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_echo_preview_url = 1
  end,

  vim_prettier = function()
    vim.g["prettier#autoformat_config_present"] = 1
    vim.g["prettier#autoformat_require_pragma"] = 0
  end,
}
return configs

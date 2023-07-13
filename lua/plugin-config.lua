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
    require("mason-lspconfig").setup_handlers {

      -- Default handler for all lsp servers
      function(server_name)
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("lspconfig")[server_name].setup {
          capabilities = capabilities,
        }
      end,

      -- Overrides for specific languages
      ["lua_ls"] = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("lspconfig").lua_ls.setup {
          capabilites = capabilities,
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
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("lspconfig").matlab_ls.setup {
          settings = {
            matlab = {
              indexWorkspace = false,
              installPath = "/Applications/MATLAB_R2023a.app",
              matlabConnectionTiming = "onDemand",
              telemetry = false,
            }
          }
        }
      end,
    }
  end,

  nvim_treesitter = function()
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
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
        "fortran",
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
      },
      sections = {
        lualine_b = { "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
          { "location", separator = "" },
          { "progress", separator = "" },
        },
        lualine_y = { "diff" },
        lualine_z = { "branch" }
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

  nvim_cmp = function()
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args) vim.fn["vsnip#anonymous"](args.body) end,
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
      }, {
        { name = 'buffer' }
      })
    })
  end,

  markdown_preview = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_echo_preview_url = 1
  end,
}
return configs

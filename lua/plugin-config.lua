local configs = {}

function configs.mason()
  require("mason").setup()
end

function configs.mason_lspconfig()
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
      require("lspconfig")[server_name].setup {}
    end,

    -- Overrides for specific languages
    ["lua_ls"] = function()
      require("lspconfig").lua_ls.setup {
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
  }
end

function configs.nvim_treesitter()
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
end

function configs.Comment()
  require("Comment").setup()
end

function configs.nvim_web_devicons()
  require("nvim-web-devicons").setup()
end

function configs.nvimtree()
  require("nvim-tree").setup {}
end

function configs.telescope()
  require("telescope").setup {}
end

function configs.lualine()
  require("lualine").setup {
    options = {
      disabled_filetypes = { "packer", "NvimTree", "Telescope" },
    },
    sections = {
      lualine_b = { "diagnostics" },
      lualine_c = { "filename", "diff" },
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
end

function configs.markdown_preview()
  vim.g.mkdp_filetypes = { "markdown" }
  vim.g.mkdp_echo_preview_url = 1
end

return configs

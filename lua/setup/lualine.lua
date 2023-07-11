local lsp_status_ok, lsp_status = pcall(require, "lsp-status")
local function lspstats()
  if lsp_status_ok then
    return lsp_status.status()
  end
  return "LSP ERR"
end
-- lualine
local lualine_ok, lualine = pcall(require, "lualine")
if lualine_ok then
  local lualine_config = {
    options = {
      -- theme = 'material',
      disabled_filetypes = { 'packer', 'NvimTree' },
      component_separators = { left = '', right = '' }
    },
    sections = {
      -- | a | b | c |   ---   | x | y | z |
      lualine_a = {'mode'},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location', 'searchcount', 'selectioncount'},
      lualine_y = {'diagnostics', 'diff'},
      lualine_z = {'branch'},
    },
    tabline = {
      lualine_c = {{
        'buffers',
        hide_filename_extension = true,
        mode = 4,
        symbols = {
          modified = ' *'
        }
      }},
      lualine_x = { lspstats }
    },
    refresh = {
      tabline = 500,
    }
  }

  lualine.setup(lualine_config)
end

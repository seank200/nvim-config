-- lsp-status
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local lsp_status_ok, lsp_status = pcall(require, "lsp-status")
local lspconfig_ok, lspconfig = pcall(require, "lspconfig")

if lsp_status_ok and lspconfig_ok then
  lsp_status.register_progress()
  lsp_status.config({
    status_symbol = "⚡️",
    diagnostics = false
  })

  -- Manually installed from:
  -- https://github.com/mathworks/MATLAB-language-server
  lspconfig.matlab_ls.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
    settings = {
      matlab = {
        indexWorkspace = false,
        installPath = "/Applications/MATLAB_R2023a.app",
        matlabConnectionTiming = "onStart",
        telemetry = false,
      }
    }
  })

  -- Required additional settings (from lspconfig repo)
  lspconfig.clangd.setup({
    handlers = lsp_status.extensions.clangd.setup(),
    init_options = {
      clangdFileStatus = true
    },
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
  })

  lspconfig.cssls.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
  })

  lspconfig.html.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
  })

  -- Required additional settings (from lspconfig repo)
  lspconfig.pylsp.setup({
    handlers = lsp_status.extensions.pyls_ms.setup(),
    settings = { python = { workspaceSymbols = { enabled = true } } },
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
  })

  lspconfig.pyright.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
  })
  lspconfig.lua_ls.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
  })

end

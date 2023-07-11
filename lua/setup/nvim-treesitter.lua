-- nvim-treesitter
local nvim_treesitter_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if nvim_treesitter_ok then
  nvim_treesitter.setup({
    highlight = {
      enable = true,
    }
  })
end

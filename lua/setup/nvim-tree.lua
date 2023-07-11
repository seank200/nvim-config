-- nvim-tree
local nvim_tree_ok, nvim_tree = pcall(require, "nvim-tree")
if nvim_tree_ok then
  nvim_tree.setup({
    filters = {
      dotfiles = false
    },
    modified = {
      enable = true
    },
    renderer = {
      highlight_opened_files = "icon",
      highlight_git = true,
      highlight_modified = "icon",
      icons = {
        glyphs = {
          folder = {
            arrow_closed = "",
            arrow_open = "",
          },
          git = {
            unstaged = "󰏫",
            staged = "",
          }
        }
      }
    },
  })
end

-- Automatically close Vim if NvimTree is the last remaining window
local closetree = vim.api.nvim_create_augroup("closetree", {
  clear = false
})
vim.api.nvim_create_autocmd({"WinEnter"}, {
  pattern = {"NvimTree*"},
  group = closetree,
  callback = function(ev)
    local last_winnr = vim.api.nvim_call_function("winnr", {"$"})
    local curr_winnr = vim.api.nvim_win_get_number(0)
    if curr_winnr == last_winnr then
      vim.cmd.quitall()
    end
  end
})

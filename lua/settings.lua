vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.cmd[[colorscheme nordic]]
vim.cmd([[
  augroup term_cmds
    autocmd!
    autocmd TermOpen * startinsert
  augroup END
]])

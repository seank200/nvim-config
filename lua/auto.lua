-- Automatically enter insert mode when starting terminal
vim.cmd([[
  augroup term_cmds
    autocmd!
    autocmd TermOpen * startinsert
  augroup END
]])

vim.cmd([[
  augroup close_tree
    autocmd!
    autocmd WinEnter NvimTree*
      \ if winnr("$") == winnr() && winnr("$") <= 1 | 
      \  :qa |
      \ endif
  augroup END
]])

-- Line numbering
vim.opt.nu = true
vim.opt.rnu = true

-- Indents
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.cmd [[ autocmd FileType javascript setlocal sw=2 ts=2 sts=2 ]]
vim.cmd [[ autocmd FileType javascriptreact setlocal sw=2 ts=2 sts=2 ]]
vim.cmd [[ autocmd FileType typescript setlocal sw=2 ts=2 sts=2 ]]
vim.cmd [[ autocmd FileType typescriptreact setlocal sw=2 ts=2 sts=2 ]]

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4

vim.opt.colorcolumn = "80"

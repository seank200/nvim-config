-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sean/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sean/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sean/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sean/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sean/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nË\3\0\0\6\0\25\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0034\4\3\0005\5\r\0>\5\1\0045\5\14\0>\5\2\4=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\22\0004\4\3\0005\5\21\0>\5\1\4=\4\f\0035\4\23\0=\4\15\3=\3\24\2B\0\2\1K\0\1\0\ftabline\1\2\0\0\rfiletype\1\0\0\1\2\2\0\fbuffers\28hide_filename_extension\2\tmode\3\4\rsections\14lualine_z\1\2\0\0\vbranch\14lualine_y\1\2\0\0\tdiff\14lualine_x\1\2\1\0\rprogress\14separator\5\1\2\1\0\rlocation\14separator\5\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\0\0\1\2\0\0\16diagnostics\foptions\1\0\0\23disabled_filetypes\1\0\0\1\4\0\0\vpacker\rNvimTree\14Telescope\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n‰\1\0\1\5\0\a\0\0146\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\0026\2\0\0'\4\3\0B\2\2\0028\2\0\0029\2\4\0025\4\5\0=\1\6\4B\2\2\1K\0\1\0\17capabilities\1\0\0\nsetup\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequireá\1\0\0\b\0\16\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\3\0B\1\2\0029\1\4\0019\1\5\0015\3\6\0=\0\a\0035\4\r\0005\5\v\0005\6\t\0005\a\b\0=\a\n\6=\6\f\5=\5\14\4=\4\15\3B\1\2\1K\0\1\0\rsettings\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\16capabilites\1\0\0\nsetup\vlua_ls\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequire\2\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\3\0B\1\2\0029\1\4\0019\1\5\0015\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3B\1\2\1K\0\1\0\rsettings\1\0\0\vmatlab\1\0\0\1\0\4\19indexWorkspace\1\27matlabConnectionTiming\ronDemand\14telemetry\1\16installPath$/Applications/MATLAB_R2023a.app\nsetup\14matlab_ls\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequire½\2\1\0\4\0\r\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0005\2\t\0003\3\a\0>\3\1\0023\3\b\0=\3\n\0023\3\v\0=\3\f\2B\0\2\1K\0\1\0\14matlab_ls\0\vlua_ls\1\0\0\0\0\19setup_handlers\21ensure_installed\1\0\0\1\19\0\0\vbashls\vclangd\ncmake\vclangd\ncssls\rdockerls\veslint\vfortls\thtml\vjsonls\vlua_ls\rmarksman\14matlab_ls\npylsp\16tailwindcss\vtexlab\rtsserver\nvimls\nsetup\20mason-lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "nvim-lspconfig", "mason-lspconfig.nvim" },
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nordic.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nordic.nvim",
    url = "https://github.com/AlexvZyl/nordic.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÈ\1\1\0\t\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0044\6\3\0005\a\n\0>\a\1\0065\a\v\0>\a\2\0064\a\3\0005\b\f\0>\b\1\aB\4\3\2=\4\t\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    after = { "mason-lspconfig.nvim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "Comment.nvim" },
    config = { "\27LJ\2\nç\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\21ensure_installed\1\30\0\0\tbash\6c\ncmake\fcomment\bcpp\bcss\tdiff\15dockerfile\ffortran\15git_rebase\14gitcommit\14gitignore\thtml\15javascript\njsdoc\tjson\nlatex\blua\tmake\rmarkdown\20markdown_inline\vmatlab\vpython\nregex\bsql\btsx\15typescript\bvim\tyaml\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\2\0\5\0\t6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\26mkdp_echo_preview_url\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÈ\1\1\0\t\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0044\6\3\0005\a\n\0>\a\1\0065\a\v\0>\a\2\0064\a\3\0005\b\f\0>\b\1\aB\4\3\2=\4\t\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nç\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\21ensure_installed\1\30\0\0\tbash\6c\ncmake\fcomment\bcpp\bcss\tdiff\15dockerfile\ffortran\15git_rebase\14gitcommit\14gitignore\thtml\15javascript\njsdoc\tjson\nlatex\blua\tmake\rmarkdown\20markdown_inline\vmatlab\vpython\nregex\bsql\btsx\15typescript\bvim\tyaml\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nË\3\0\0\6\0\25\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0034\4\3\0005\5\r\0>\5\1\0045\5\14\0>\5\2\4=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\22\0004\4\3\0005\5\21\0>\5\1\4=\4\f\0035\4\23\0=\4\15\3=\3\24\2B\0\2\1K\0\1\0\ftabline\1\2\0\0\rfiletype\1\0\0\1\2\2\0\fbuffers\28hide_filename_extension\2\tmode\3\4\rsections\14lualine_z\1\2\0\0\vbranch\14lualine_y\1\2\0\0\tdiff\14lualine_x\1\2\1\0\rprogress\14separator\5\1\2\1\0\rlocation\14separator\5\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\0\0\1\2\0\0\16diagnostics\foptions\1\0\0\23disabled_filetypes\1\0\0\1\4\0\0\vpacker\rNvimTree\14Telescope\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd mason-lspconfig.nvim ]]

-- Config for: mason-lspconfig.nvim
try_loadstring("\27LJ\2\n‰\1\0\1\5\0\a\0\0146\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\0026\2\0\0'\4\3\0B\2\2\0028\2\0\0029\2\4\0025\4\5\0=\1\6\4B\2\2\1K\0\1\0\17capabilities\1\0\0\nsetup\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequireá\1\0\0\b\0\16\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\3\0B\1\2\0029\1\4\0019\1\5\0015\3\6\0=\0\a\0035\4\r\0005\5\v\0005\6\t\0005\a\b\0=\a\n\6=\6\f\5=\5\14\4=\4\15\3B\1\2\1K\0\1\0\rsettings\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\16capabilites\1\0\0\nsetup\vlua_ls\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequire\2\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\3\0B\1\2\0029\1\4\0019\1\5\0015\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3B\1\2\1K\0\1\0\rsettings\1\0\0\vmatlab\1\0\0\1\0\4\19indexWorkspace\1\27matlabConnectionTiming\ronDemand\14telemetry\1\16installPath$/Applications/MATLAB_R2023a.app\nsetup\14matlab_ls\14lspconfig\25default_capabilities\17cmp_nvim_lsp\frequire½\2\1\0\4\0\r\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0005\2\t\0003\3\a\0>\3\1\0023\3\b\0=\3\n\0023\3\v\0=\3\f\2B\0\2\1K\0\1\0\14matlab_ls\0\vlua_ls\1\0\0\0\0\19setup_handlers\21ensure_installed\1\0\0\1\19\0\0\vbashls\vclangd\ncmake\vclangd\ncssls\rdockerls\veslint\vfortls\thtml\vjsonls\vlua_ls\rmarksman\14matlab_ls\npylsp\16tailwindcss\vtexlab\rtsserver\nvimls\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")

vim.cmd [[ packadd Comment.nvim ]]

-- Config for: Comment.nvim
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

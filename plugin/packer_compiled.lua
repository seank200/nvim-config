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
local package_path_str = "/Users/sean/.cache/nvim/packer_hererocks/2.1.1697887905/share/lua/5.1/?.lua;/Users/sean/.cache/nvim/packer_hererocks/2.1.1697887905/share/lua/5.1/?/init.lua;/Users/sean/.cache/nvim/packer_hererocks/2.1.1697887905/lib/luarocks/rocks-5.1/?.lua;/Users/sean/.cache/nvim/packer_hererocks/2.1.1697887905/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sean/.cache/nvim/packer_hererocks/2.1.1697887905/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nﬂ\2\0\0\6\1\16\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0-\5\0\0B\0\5\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\f\0'\4\r\0-\5\0\0B\0\5\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\14\0'\4\15\0-\5\0\0B\0\5\1K\0\1\0\1¿#<Cmd>BufferLineCloseOthers<CR>\15<leader>bo!<cmd>BufferLineCycleNext<cr>\n<S-l>!<cmd>BufferLineCyclePrev<cr>\n<S-h>\6n\bset\vkeymap\bvim\foptions\1\0\0\1\0\2\20show_close_icon\1\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nê\1\0\0\3\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\21catppuccin-mocha\16colorscheme\bcmd\bvim\1\0\1\27transparent_background\2\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
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
  ["conform.nvim"] = {
    config = { "\27LJ\2\ny\0\1\2\0\5\0\0146\1\0\0009\1\1\0019\1\2\1\14\0\1\0X\2\6Ä6\1\0\0009\1\3\0018\1\0\0019\1\2\1\15\0\1\0X\2\1ÄK\0\1\0005\1\4\0L\1\2\0\1\0\2\15timeout_ms\3Ù\3\17lsp_fallback\2\6b\23disable_autoformat\6g\bvim≈\1\0\1\4\0\b\0\0199\1\0\0\15\0\1\0X\2\bÄ6\1\1\0009\1\2\1+\2\2\0=\2\3\0016\1\4\0'\3\5\0B\1\2\1X\1\aÄ6\1\1\0009\1\6\1+\2\2\0=\2\3\0016\1\4\0'\3\a\0B\1\2\1K\0\1\0\"Auto-format on save disabled.\6g2Auto-format on save disabled for this buffer.\nprint\23disable_autoformat\6b\bvim\tbangu\0\0\3\0\6\0\f6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0+\1\1\0=\1\2\0006\0\4\0'\2\5\0B\0\2\1K\0\1\0!Auto-format on save enabled.\nprint\6g\23disable_autoformat\6b\bvim‰\3\1\0\6\0\27\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0034\4\3\0005\5\n\0>\5\1\4=\4\v\0034\4\3\0005\5\f\0>\5\1\4=\4\r\3=\3\15\0023\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0003\3\22\0005\4\23\0B\0\4\0016\0\18\0009\0\19\0009\0\20\0'\2\24\0003\3\25\0005\4\26\0B\0\4\1K\0\1\0\1\0\1\tdesc\30Enable formatting on save\0\17FormatEnable\1\0\2\tdesc\31Disable formatting on save\tbang\2\0\18FormatDisable\29nvim_create_user_command\bapi\bvim\19format_on_save\0\21formatters_by_ft\1\0\0\15typescript\1\3\0\0\14prettierd\rprettier\15javascript\1\3\0\0\14prettierd\rprettier\blua\1\2\0\0\vstylua\bcpp\1\2\0\0\17clang_format\6c\1\0\0\1\2\0\0\17clang_format\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nû\b\0\0\t\0\26\0,'\0\0\0006\1\1\0009\1\2\1'\3\3\0)\4\4\0B\1\3\2\18\2\0\0'\3\3\0&\0\3\0016\1\4\0'\3\5\0B\1\2\0029\1\6\0015\3\a\0005\4\b\0=\4\t\0035\4\f\0006\5\n\0009\5\v\5\18\a\0\0'\b\3\0B\5\3\2=\5\r\0044\5\6\0005\6\14\0>\6\1\0055\6\15\0>\6\2\0055\6\16\0>\6\3\0055\6\17\0>\6\4\0055\6\18\0>\6\5\5=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0044\5\0\0=\5\24\4=\4\25\3B\1\2\1K\0\1\0\vconfig\vfooter\bmru\1\0\2\nlimit\3\b\rcwd_only\2\fproject\1\0\1\venable\1\rshortcut\1\0\4\tdesc\tQuit\bkey\6q\vaction\aqa\ticon\tÔê¶ \1\0\5\tdesc\fRestore\ngroup\14Character\vaction&lua require('persistence').load()\bkey\6s\ticon\tÔê∫ \1\0\5\tdesc\vConfig\ngroup\14Statement\vactionTlua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') })\bkey\6c\ticon\nÛ∞Äñ \1\0\5\tdesc\tText\ngroup\rConstant\vaction\24Telescope live_grep\bkey\6g\ticon\nÛ±é∏ \1\0\5\tdesc\nFiles\ngroup\vString\vaction\25Telescope find_files\bkey\6f\ticon\tÔê¢ \vheader\1\0\0\nsplit\bvim\thide\1\0\1\15statusline\1\1\0\1\ntheme\nhyper\nsetup\14dashboard\frequire\6\n\brep\vstringµ\2                              ______ _____________________ \n    __________________ __________  //_/_|__ \\_  __ \\_  __ \\\n    __  ___/  _ \\  __ `/_  __ \\_  ,<  ____/ /  / / /  / / /\n    _(__  )/  __/ /_/ /_  / / /  /| | _  __// /_/ // /_/ / \n    /____/ \\___/\\__,_/ /_/ /_//_/ |_| /____/\\____/ \\____/  \n    \0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\n;\0\2\5\1\3\0\6-\2\0\0009\2\0\0025\4\1\0=\1\2\4B\2\2\1K\0\1\0\0¿\vbuffer\1\0\0\20default_keymaps\\\0\0\4\1\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0-\2\0\0009\2\4\2B\2\1\0A\0\0\1K\0\1\0\0¿\16nvim_lua_ls\nsetup\vlua_ls\14lspconfig\frequireá\2\0\0\6\0\v\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\2\14\0\1\0X\2\4Ä9\2\4\0'\4\5\0B\2\2\2\18\1\2\0\15\0\1\0X\2\2Ä+\2\1\0L\2\2\0006\2\6\0009\2\a\0029\2\b\2)\4\0\0'\5\t\0B\2\3\2\6\2\n\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0\15\0\2\0X\3\2Ä+\3\1\0L\3\2\0+\3\2\0L\3\2\0\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\fComment\20in_syntax_group\fcomment\26in_treesitter_capture\23cmp.config.context\frequireˆ\5\1\0\f\0-\0]6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0003\3\5\0B\1\2\0019\1\6\0B\1\1\0016\1\0\0'\3\a\0B\1\2\0029\1\6\0015\3\f\0005\4\n\0009\5\b\0>\5\1\0043\5\t\0=\5\v\4=\4\r\3B\1\2\0016\1\0\0'\3\14\0B\1\2\0025\2\17\0009\3\15\0019\3\16\3=\3\18\0029\3\6\0015\5\20\0003\6\19\0=\6\21\0054\6\4\0005\a\22\0>\a\1\0065\a\23\0>\a\2\0065\a\24\0>\a\3\6=\6\25\0059\6\26\0B\6\1\2=\6\27\0059\6\28\0019\6\2\0069\6\29\0065\b\31\0009\t\28\0019\t\30\t\18\v\2\0B\t\2\2=\t \b9\t\28\0019\t!\t\18\v\2\0B\t\2\2=\t\"\b9\t\28\0019\t#\t)\v¸ˇB\t\2\2=\t$\b9\t\28\0019\t#\t)\v\4\0B\t\2\2=\t%\b9\t\28\0019\t&\t5\v'\0B\t\2\2=\t(\bB\6\2\2=\6\28\5B\3\2\0019\3\6\0019\3)\0035\5*\0005\6+\0009\a\28\0019\a\2\a9\a)\aB\a\1\2=\a\28\0064\a\3\0005\b,\0>\b\1\a=\a\25\6B\3\3\0012\0\0ÄK\0\1\0\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\t<CR>\1\0\1\vselect\2\fconfirm\n<C-f>\n<C-b>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\fmapping\15formatting\15cmp_format\fsources\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fenabled\1\0\0\0\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\rhandlers\1\0\0\vlua_ls\1\0\0\0\18default_setup\20mason-lspconfig\nsetup\0\14on_attach\16recommended\vpreset\rlsp-zero\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 Ω\5\1\0\n\0\31\00064\0\3\0005\1\1\0003\2\0\0>\2\1\1>\1\1\0005\1\2\0005\2\3\0=\2\4\0015\2\5\0005\3\6\0=\3\a\0025\3\b\0006\4\t\0'\6\n\0B\4\2\0029\4\v\0045\6\17\0005\a\f\0005\b\14\0005\t\r\0=\t\15\b=\b\16\a=\a\18\0065\a\19\0=\0\20\a4\b\3\0>\3\1\b=\b\21\a5\b\22\0>\1\1\b>\2\2\b=\b\23\a5\b\24\0=\b\25\a4\b\0\0=\b\26\a=\0\27\a=\a\28\0065\a\29\0004\b\0\0=\b\20\a4\b\0\0=\b\21\a4\b\0\0=\b\23\a4\b\0\0=\b\25\a4\b\0\0=\b\26\a4\b\0\0=\b\27\a=\a\30\6B\4\2\1K\0\1\0\22inactive_sections\1\0\0\rsections\14lualine_z\14lualine_y\14lualine_x\1\4\0\0\14selection\rprogress\rlocation\14lualine_c\1\5\0\0\0\0\16diagnostics\tdiff\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\15statusline\1\0\0\1\3\0\0\rneo-tree\14Telescope\1\0\3\25component_separators\5\17globalstatus\2\23section_separators\5\nsetup\flualine\frequire\1\2\1\0\vbranch\ticon\bÓú•\fsymbols\1\0\4\rreadonly\b[-]\rmodified\b‚óè\funnamed\14[No Name]\fnewfile\n[New]\1\2\1\0\rfilename\tpath\3\1\fpadding\1\0\2\nright\3\0\tleft\3\1\1\2\2\0\rfiletype\fcolored\2\14icon_only\2\1\0\1\fpadding\3\0\0\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    after = { "lsp-zero.nvim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\n]\0\1\5\0\5\0\t6\1\0\0009\1\1\0016\3\2\0009\3\3\0039\3\4\3B\3\1\2\18\4\0\0B\1\3\1K\0\1\0\25nvim_get_current_buf\bapi\bvim\vdelete\18MiniBufremove\25\0\0\3\1\0\0\4-\0\0\0+\2\1\0B\0\2\1K\0\1\0\0¿\25\0\0\3\1\0\0\4-\0\0\0+\2\2\0B\0\2\1K\0\1\0\0¿Å\1\0\0\3\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2\14\0\0\0X\1\3Ä6\0\3\0009\0\4\0009\0\5\0L\0\2\0\18commentstring\abo\bvim\28calculate_commentstring\29ts_context_commentstring\frequire“\3\1\0\a\0\25\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0013\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0003\5\t\0005\6\n\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0003\5\f\0005\6\r\0B\1\5\0016\1\0\0'\3\14\0B\1\2\0029\1\2\0015\3\18\0005\4\16\0003\5\15\0=\5\17\4=\4\19\3B\1\2\0016\1\0\0'\3\20\0B\1\2\0029\1\2\1B\1\1\0016\1\0\0'\3\21\0B\1\2\0029\1\2\0015\3\23\0005\4\22\0=\4\24\3B\1\2\0012\0\0ÄK\0\1\0\rmappings\1\0\0\1\0\a\vdelete\bgsd\tfind\bgsf\14find_left\bgsF\19update_n_lines\bgsn\14highlight\bgsh\badd\bgsa\freplace\bgsr\18mini.surround\15mini.pairs\foptions\1\0\0\25custom_commentstring\1\0\0\0\17mini.comment\1\0\1\fnoremap\2\0\15<leader>bD\1\0\1\fnoremap\2\0\15<leader>bd\6n\bset\vkeymap\bvim\0\nsetup\19mini.bufremove\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0¿\1\0\1\vtoggle\2\fexecute?\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0¿\1\0\2\vsource\fbuffers\vtoggle\2\fexecuteB\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0¿\1\0\2\vsource\15git_status\vtoggle\2\fexecute¶\6\1\0\a\0\31\0>6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\3B\1\2\0016\1\v\0009\1\f\0019\1\r\1'\3\14\0005\4\15\0B\1\3\0016\1\v\0009\1\f\0019\1\r\1'\3\16\0005\4\17\0B\1\3\0016\1\v\0009\1\f\0019\1\r\1'\3\18\0005\4\19\0B\1\3\0016\1\v\0009\1\f\0019\1\r\1'\3\20\0005\4\21\0B\1\3\0016\1\v\0009\1\22\0019\1\23\1'\3\24\0'\4\25\0003\5\26\0B\1\4\0016\1\v\0009\1\22\0019\1\23\1'\3\24\0'\4\27\0003\5\28\0B\1\4\0016\1\v\0009\1\22\0019\1\23\1'\3\24\0'\4\29\0003\5\30\0B\1\4\0012\0\0ÄK\0\1\0\0\15<leader>ge\0\15<leader>be\0\14<leader>e\6n\bset\vkeymap\1\0\2\ttext\nÛ∞åµ \vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\30default_component_configs\15git_status\1\0\0\fsymbols\1\0\0\1\0\t\fdeleted\6D\nadded\6A\rconflict\6!\vstaged\6+\runstaged\5\fignored\6-\14untracked\6U\frenamed\6R\rmodified\6M\1\0\3\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\nsetup\rneo-tree\21neo-tree.command\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-context", "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\n√\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\2\17sync_install\1\17auto_install\2\1\22\0\0\15javascript\15typescript\bcss\thtml\njsdoc\tjson\rmarkdown\tbash\bcsv\6c\bcpp\ncmake\tmake\tdiff\14gitignore\nlatex\blua\vpython\bvim\vvimdoc\nquery\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n{\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\14max_lines\3\5\venable\2\tmode\vcursor\22min_window_height\3\n\nsetup\23treesitter-context\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    config = { "\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19enable_autocmd\1\nsetup\29ts_context_commentstring\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\nÜ\1\0\0\a\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\1'\3\6\0'\4\a\0009\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\tload\15<leader>qs\6n\bset\vkeymap\bvim\nsetup\16persistence\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["smart-splits.nvim"] = {
    config = { "\27LJ\2\nÅ\4\0\0\a\1\22\0I6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\n\0009\5\v\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\f\0009\5\r\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\14\0009\5\15\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\16\0009\5\17\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\18\0009\5\v\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\19\0009\5\r\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\20\0009\5\15\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\21\0009\5\17\0-\6\0\0B\1\5\1K\0\1\0\1¿\n<M-l>\n<M-k>\n<M-j>\n<M-h>\17resize_right\n<A-l>\14resize_up\n<A-k>\16resize_down\n<A-j>\16resize_left\n<A-h>\6n\bset\vkeymap\bvim\21ignored_buftypes\1\3\0\0\rneo-tree\14Telescope\1\0\2\19default_amount\3\3\fat_edge\tstop\nsetup\17smart-splits\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/smart-splits.nvim",
    url = "https://github.com/mrjones2014/smart-splits.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\nØ\1\0\0\6\1\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0-\5\0\0B\0\5\1K\0\1\0\1¿$<cmd>Telescope file_browser<CR>\15<leader>fd\6n\bset\vkeymap\bvim\17file_browser\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nû\4\0\0\n\1\31\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\1\0B\3\2\0029\3\4\0035\5\f\0005\6\n\0005\a\b\0005\b\6\0009\t\5\1=\t\a\b=\b\t\a=\a\v\6=\6\r\0055\6\15\0005\a\14\0=\a\16\6=\6\17\5B\3\2\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\21\0009\a\22\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\23\0009\a\24\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\25\0009\a\26\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\27\0009\a\28\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\29\0009\a\30\2-\b\0\0B\3\5\1K\0\1\0\1¿\fbuffers\15<leader>fb\roldfiles\15<leader>fr\14live_grep\14<leader>/\14git_files\15<leader>ff\15find_files\20<leader><space>\bset\vkeymap\bvim\15extensions\17file_browser\1\0\0\1\0\1\fgrouped\2\rdefaults\1\0\0\rmappings\1\0\0\6n\1\0\0\6q\1\0\0\nclose\nsetup\22telescope.builtin\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\nû\1\0\0\6\1\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0-\5\0\0B\0\5\1K\0\1\0\1¿\27<cmd>TodoTelescope<CR>\15<leader>ft\6n\bset\vkeymap\bvim\1\0\1\nsigns\1\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nî\2\0\0\6\1\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0-\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0-\5\0\0B\0\5\1K\0\1\0\1¿1<cmd>TroubleToggle workspace_diagnostics<CR>\15<leader>xX0<cmd>TroubleToggle document_diagnostics<CR>\15<leader>xx\6n\bset\vkeymap\bvim\1\0\1\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n√\1\0\0\5\0\14\0\0236\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\a\0006\1\t\0009\1\n\1'\3\v\0B\1\2\2'\2\f\0&\1\2\1=\1\b\0006\0\0\0009\0\a\0+\1\2\0=\1\r\0K\0\1\0\rundofile\18/.vim/undodir\tHOME\vgetenv\aos\fundodir\bopt\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\nõ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\25large_file_overrides\14providers\1\0\0\1\2\0\0\blsp\1\0\2\22large_file_cutoff\3–\15\ndelay\3Ù\3\14configure\15illuminate\frequire\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nç\2\0\0\6\1\f\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0-\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0-\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0-\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0-\5\0\0B\0\5\1K\0\1\0\1¿\27:TmuxNavigateRight<CR>\n<C-l>\24:TmuxNavigateUp<CR>\n<C-k>\26:TmuxNavigateDown<CR>\n<C-j>\26:TmuxNavigateLeft<CR>\n<C-h>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/sean/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope-fzf-native.nvim
time([[Config for telescope-fzf-native.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0", "config", "telescope-fzf-native.nvim")
time([[Config for telescope-fzf-native.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nû\4\0\0\n\1\31\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\1\0B\3\2\0029\3\4\0035\5\f\0005\6\n\0005\a\b\0005\b\6\0009\t\5\1=\t\a\b=\b\t\a=\a\v\6=\6\r\0055\6\15\0005\a\14\0=\a\16\6=\6\17\5B\3\2\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\21\0009\a\22\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\23\0009\a\24\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\25\0009\a\26\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\27\0009\a\28\2-\b\0\0B\3\5\0016\3\18\0009\3\19\0039\3\20\3'\5\t\0'\6\29\0009\a\30\2-\b\0\0B\3\5\1K\0\1\0\1¿\fbuffers\15<leader>fb\roldfiles\15<leader>fr\14live_grep\14<leader>/\14git_files\15<leader>ff\15find_files\20<leader><space>\bset\vkeymap\bvim\15extensions\17file_browser\1\0\0\1\0\1\fgrouped\2\rdefaults\1\0\0\rmappings\1\0\0\6n\1\0\0\6q\1\0\0\nclose\nsetup\22telescope.builtin\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\nû\1\0\0\6\1\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0-\5\0\0B\0\5\1K\0\1\0\1¿\27<cmd>TodoTelescope<CR>\15<leader>ft\6n\bset\vkeymap\bvim\1\0\1\nsigns\1\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-ts-context-commentstring
time([[Config for nvim-ts-context-commentstring]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19enable_autocmd\1\nsetup\29ts_context_commentstring\frequire\0", "config", "nvim-ts-context-commentstring")
time([[Config for nvim-ts-context-commentstring]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nî\2\0\0\6\1\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0-\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0-\5\0\0B\0\5\1K\0\1\0\1¿1<cmd>TroubleToggle workspace_diagnostics<CR>\15<leader>xX0<cmd>TroubleToggle document_diagnostics<CR>\15<leader>xx\6n\bset\vkeymap\bvim\1\0\1\25use_diagnostic_signs\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 Ω\5\1\0\n\0\31\00064\0\3\0005\1\1\0003\2\0\0>\2\1\1>\1\1\0005\1\2\0005\2\3\0=\2\4\0015\2\5\0005\3\6\0=\3\a\0025\3\b\0006\4\t\0'\6\n\0B\4\2\0029\4\v\0045\6\17\0005\a\f\0005\b\14\0005\t\r\0=\t\15\b=\b\16\a=\a\18\0065\a\19\0=\0\20\a4\b\3\0>\3\1\b=\b\21\a5\b\22\0>\1\1\b>\2\2\b=\b\23\a5\b\24\0=\b\25\a4\b\0\0=\b\26\a=\0\27\a=\a\28\0065\a\29\0004\b\0\0=\b\20\a4\b\0\0=\b\21\a4\b\0\0=\b\23\a4\b\0\0=\b\25\a4\b\0\0=\b\26\a4\b\0\0=\b\27\a=\a\30\6B\4\2\1K\0\1\0\22inactive_sections\1\0\0\rsections\14lualine_z\14lualine_y\14lualine_x\1\4\0\0\14selection\rprogress\rlocation\14lualine_c\1\5\0\0\0\0\16diagnostics\tdiff\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\15statusline\1\0\0\1\3\0\0\rneo-tree\14Telescope\1\0\3\25component_separators\5\17globalstatus\2\23section_separators\5\nsetup\flualine\frequire\1\2\1\0\vbranch\ticon\bÓú•\fsymbols\1\0\4\rreadonly\b[-]\rmodified\b‚óè\funnamed\14[No Name]\fnewfile\n[New]\1\2\1\0\rfilename\tpath\3\1\fpadding\1\0\2\nright\3\0\tleft\3\1\1\2\2\0\rfiletype\fcolored\2\14icon_only\2\1\0\1\fpadding\3\0\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n√\1\0\0\5\0\14\0\0236\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\a\0006\1\t\0009\1\n\1'\3\v\0B\1\2\2'\2\f\0&\1\2\1=\1\b\0006\0\0\0009\0\a\0+\1\2\0=\1\r\0K\0\1\0\rundofile\18/.vim/undodir\tHOME\vgetenv\aos\fundodir\bopt\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: persistence.nvim
time([[Config for persistence.nvim]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\a\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\1'\3\6\0'\4\a\0009\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\tload\15<leader>qs\6n\bset\vkeymap\bvim\nsetup\16persistence\frequire\0", "config", "persistence.nvim")
time([[Config for persistence.nvim]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\nØ\1\0\0\6\1\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0-\5\0\0B\0\5\1K\0\1\0\1¿$<cmd>Telescope file_browser<CR>\15<leader>fd\6n\bset\vkeymap\bvim\17file_browser\19load_extension\14telescope\frequire\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\nõ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\25large_file_overrides\14providers\1\0\0\1\2\0\0\blsp\1\0\2\22large_file_cutoff\3–\15\ndelay\3Ù\3\14configure\15illuminate\frequire\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n√\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\2\17sync_install\1\17auto_install\2\1\22\0\0\15javascript\15typescript\bcss\thtml\njsdoc\tjson\rmarkdown\tbash\bcsv\6c\bcpp\ncmake\tmake\tdiff\14gitignore\nlatex\blua\vpython\bvim\vvimdoc\nquery\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: smart-splits.nvim
time([[Config for smart-splits.nvim]], true)
try_loadstring("\27LJ\2\nÅ\4\0\0\a\1\22\0I6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\n\0009\5\v\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\f\0009\5\r\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\14\0009\5\15\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\16\0009\5\17\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\18\0009\5\v\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\19\0009\5\r\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\20\0009\5\15\0-\6\0\0B\1\5\0016\1\6\0009\1\a\0019\1\b\1'\3\t\0'\4\21\0009\5\17\0-\6\0\0B\1\5\1K\0\1\0\1¿\n<M-l>\n<M-k>\n<M-j>\n<M-h>\17resize_right\n<A-l>\14resize_up\n<A-k>\16resize_down\n<A-j>\16resize_left\n<A-h>\6n\bset\vkeymap\bvim\21ignored_buftypes\1\3\0\0\rneo-tree\14Telescope\1\0\2\19default_amount\3\3\fat_edge\tstop\nsetup\17smart-splits\frequire\0", "config", "smart-splits.nvim")
time([[Config for smart-splits.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nﬂ\2\0\0\6\1\16\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0-\5\0\0B\0\5\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\f\0'\4\r\0-\5\0\0B\0\5\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\14\0'\4\15\0-\5\0\0B\0\5\1K\0\1\0\1¿#<Cmd>BufferLineCloseOthers<CR>\15<leader>bo!<cmd>BufferLineCycleNext<cr>\n<S-l>!<cmd>BufferLineCyclePrev<cr>\n<S-h>\6n\bset\vkeymap\bvim\foptions\1\0\0\1\0\2\20show_close_icon\1\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\n]\0\1\5\0\5\0\t6\1\0\0009\1\1\0016\3\2\0009\3\3\0039\3\4\3B\3\1\2\18\4\0\0B\1\3\1K\0\1\0\25nvim_get_current_buf\bapi\bvim\vdelete\18MiniBufremove\25\0\0\3\1\0\0\4-\0\0\0+\2\1\0B\0\2\1K\0\1\0\0¿\25\0\0\3\1\0\0\4-\0\0\0+\2\2\0B\0\2\1K\0\1\0\0¿Å\1\0\0\3\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2\14\0\0\0X\1\3Ä6\0\3\0009\0\4\0009\0\5\0L\0\2\0\18commentstring\abo\bvim\28calculate_commentstring\29ts_context_commentstring\frequire“\3\1\0\a\0\25\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0013\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0003\5\t\0005\6\n\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0003\5\f\0005\6\r\0B\1\5\0016\1\0\0'\3\14\0B\1\2\0029\1\2\0015\3\18\0005\4\16\0003\5\15\0=\5\17\4=\4\19\3B\1\2\0016\1\0\0'\3\20\0B\1\2\0029\1\2\1B\1\1\0016\1\0\0'\3\21\0B\1\2\0029\1\2\0015\3\23\0005\4\22\0=\4\24\3B\1\2\0012\0\0ÄK\0\1\0\rmappings\1\0\0\1\0\a\vdelete\bgsd\tfind\bgsf\14find_left\bgsF\19update_n_lines\bgsn\14highlight\bgsh\badd\bgsa\freplace\bgsr\18mini.surround\15mini.pairs\foptions\1\0\0\25custom_commentstring\1\0\0\0\17mini.comment\1\0\1\fnoremap\2\0\15<leader>bD\1\0\1\fnoremap\2\0\15<leader>bd\6n\bset\vkeymap\bvim\0\nsetup\19mini.bufremove\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\ny\0\1\2\0\5\0\0146\1\0\0009\1\1\0019\1\2\1\14\0\1\0X\2\6Ä6\1\0\0009\1\3\0018\1\0\0019\1\2\1\15\0\1\0X\2\1ÄK\0\1\0005\1\4\0L\1\2\0\1\0\2\15timeout_ms\3Ù\3\17lsp_fallback\2\6b\23disable_autoformat\6g\bvim≈\1\0\1\4\0\b\0\0199\1\0\0\15\0\1\0X\2\bÄ6\1\1\0009\1\2\1+\2\2\0=\2\3\0016\1\4\0'\3\5\0B\1\2\1X\1\aÄ6\1\1\0009\1\6\1+\2\2\0=\2\3\0016\1\4\0'\3\a\0B\1\2\1K\0\1\0\"Auto-format on save disabled.\6g2Auto-format on save disabled for this buffer.\nprint\23disable_autoformat\6b\bvim\tbangu\0\0\3\0\6\0\f6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0+\1\1\0=\1\2\0006\0\4\0'\2\5\0B\0\2\1K\0\1\0!Auto-format on save enabled.\nprint\6g\23disable_autoformat\6b\bvim‰\3\1\0\6\0\27\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0034\4\3\0005\5\n\0>\5\1\4=\4\v\0034\4\3\0005\5\f\0>\5\1\4=\4\r\3=\3\15\0023\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0003\3\22\0005\4\23\0B\0\4\0016\0\18\0009\0\19\0009\0\20\0'\2\24\0003\3\25\0005\4\26\0B\0\4\1K\0\1\0\1\0\1\tdesc\30Enable formatting on save\0\17FormatEnable\1\0\2\tdesc\31Disable formatting on save\tbang\2\0\18FormatDisable\29nvim_create_user_command\bapi\bvim\19format_on_save\0\21formatters_by_ft\1\0\0\15typescript\1\3\0\0\14prettierd\rprettier\15javascript\1\3\0\0\14prettierd\rprettier\blua\1\2\0\0\vstylua\bcpp\1\2\0\0\17clang_format\6c\1\0\0\1\2\0\0\17clang_format\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nç\2\0\0\6\1\f\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0-\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0-\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0-\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0-\5\0\0B\0\5\1K\0\1\0\1¿\27:TmuxNavigateRight<CR>\n<C-l>\24:TmuxNavigateUp<CR>\n<C-k>\26:TmuxNavigateDown<CR>\n<C-j>\26:TmuxNavigateLeft<CR>\n<C-h>\6n\bset\vkeymap\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nê\1\0\0\3\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\21catppuccin-mocha\16colorscheme\bcmd\bvim\1\0\1\27transparent_background\2\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0¿\1\0\1\vtoggle\2\fexecute?\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0¿\1\0\2\vsource\fbuffers\vtoggle\2\fexecuteB\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0¿\1\0\2\vsource\15git_status\vtoggle\2\fexecute¶\6\1\0\a\0\31\0>6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\3B\1\2\0016\1\v\0009\1\f\0019\1\r\1'\3\14\0005\4\15\0B\1\3\0016\1\v\0009\1\f\0019\1\r\1'\3\16\0005\4\17\0B\1\3\0016\1\v\0009\1\f\0019\1\r\1'\3\18\0005\4\19\0B\1\3\0016\1\v\0009\1\f\0019\1\r\1'\3\20\0005\4\21\0B\1\3\0016\1\v\0009\1\22\0019\1\23\1'\3\24\0'\4\25\0003\5\26\0B\1\4\0016\1\v\0009\1\22\0019\1\23\1'\3\24\0'\4\27\0003\5\28\0B\1\4\0016\1\v\0009\1\22\0019\1\23\1'\3\24\0'\4\29\0003\5\30\0B\1\4\0012\0\0ÄK\0\1\0\0\15<leader>ge\0\15<leader>be\0\14<leader>e\6n\bset\vkeymap\1\0\2\ttext\nÛ∞åµ \vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\30default_component_configs\15git_status\1\0\0\fsymbols\1\0\0\1\0\t\fdeleted\6D\nadded\6A\rconflict\6!\vstaged\6+\runstaged\5\fignored\6-\14untracked\6U\frenamed\6R\rmodified\6M\1\0\3\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\nsetup\rneo-tree\21neo-tree.command\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0", "config", "neodev.nvim")
time([[Config for neodev.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
vim.cmd [[ packadd nvim-treesitter-context ]]

-- Config for: nvim-treesitter-context
try_loadstring("\27LJ\2\n{\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\14max_lines\3\5\venable\2\tmode\vcursor\22min_window_height\3\n\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")

vim.cmd [[ packadd mason-lspconfig.nvim ]]
vim.cmd [[ packadd lsp-zero.nvim ]]

-- Config for: lsp-zero.nvim
try_loadstring("\27LJ\2\n;\0\2\5\1\3\0\6-\2\0\0009\2\0\0025\4\1\0=\1\2\4B\2\2\1K\0\1\0\0¿\vbuffer\1\0\0\20default_keymaps\\\0\0\4\1\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0-\2\0\0009\2\4\2B\2\1\0A\0\0\1K\0\1\0\0¿\16nvim_lua_ls\nsetup\vlua_ls\14lspconfig\frequireá\2\0\0\6\0\v\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\2\14\0\1\0X\2\4Ä9\2\4\0'\4\5\0B\2\2\2\18\1\2\0\15\0\1\0X\2\2Ä+\2\1\0L\2\2\0006\2\6\0009\2\a\0029\2\b\2)\4\0\0'\5\t\0B\2\3\2\6\2\n\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0\15\0\2\0X\3\2Ä+\3\1\0L\3\2\0+\3\2\0L\3\2\0\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\fComment\20in_syntax_group\fcomment\26in_treesitter_capture\23cmp.config.context\frequireˆ\5\1\0\f\0-\0]6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0003\3\5\0B\1\2\0019\1\6\0B\1\1\0016\1\0\0'\3\a\0B\1\2\0029\1\6\0015\3\f\0005\4\n\0009\5\b\0>\5\1\0043\5\t\0=\5\v\4=\4\r\3B\1\2\0016\1\0\0'\3\14\0B\1\2\0025\2\17\0009\3\15\0019\3\16\3=\3\18\0029\3\6\0015\5\20\0003\6\19\0=\6\21\0054\6\4\0005\a\22\0>\a\1\0065\a\23\0>\a\2\0065\a\24\0>\a\3\6=\6\25\0059\6\26\0B\6\1\2=\6\27\0059\6\28\0019\6\2\0069\6\29\0065\b\31\0009\t\28\0019\t\30\t\18\v\2\0B\t\2\2=\t \b9\t\28\0019\t!\t\18\v\2\0B\t\2\2=\t\"\b9\t\28\0019\t#\t)\v¸ˇB\t\2\2=\t$\b9\t\28\0019\t#\t)\v\4\0B\t\2\2=\t%\b9\t\28\0019\t&\t5\v'\0B\t\2\2=\t(\bB\6\2\2=\6\28\5B\3\2\0019\3\6\0019\3)\0035\5*\0005\6+\0009\a\28\0019\a\2\a9\a)\aB\a\1\2=\a\28\0064\a\3\0005\b,\0>\b\1\a=\a\25\6B\3\3\0012\0\0ÄK\0\1\0\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\t<CR>\1\0\1\vselect\2\fconfirm\n<C-f>\n<C-b>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\vinsert\fmapping\15formatting\15cmp_format\fsources\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fenabled\1\0\0\0\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\rhandlers\1\0\0\vlua_ls\1\0\0\0\18default_setup\20mason-lspconfig\nsetup\0\14on_attach\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
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

local config = {}

config.mason = function()
	require("mason").setup({})
end

config.lsp_zero = function()
	local lsp_zero = require("lsp-zero")
	lsp_zero.preset("recommended")
	lsp_zero.on_attach(function(_, bufnr)
		-- see :help lsp-zero-keybindings
		lsp_zero.default_keymaps({ buffer = bufnr })
	end)
	lsp_zero.setup()

	require("mason-lspconfig").setup({
		ensure_installed = {
			"bashls",
			"clangd",
			"matlab_ls",
			"lua_ls",
			"pylsp",
			"tsserver",
		},
		handlers = {
			lsp_zero.default_setup,
			lua_ls = function()
				require("lspconfig").lua_ls.setup(lsp_zero.nvim_lua_ls())
			end,
			matlab_ls = function()
				require("lspconfig").matlab_ls.setup({
					settings = {
						MATLAB = {
							installPath = "/Applications/MATLAB_R2022a.app/bin/matlab",
						},
					},
				})
			end,
		},
	})

	local cmp = require("cmp")
	local cmp_select = { behavior = cmp.SelectBehavior.Select }
	cmp.setup({
		enabled = function()
			-- Do not autocomplete inside comments
			local context = require("cmp.config.context")
			local in_comment = context.in_treesitter_capture("comment")
			in_comment = in_comment or context.in_syntax_group("Comment")

			if in_comment then
				return false
			end

			-- Do not autocomplete in telescope
			local in_prompt = vim.api.nvim_buf_get_option(0, "buftype") == "prompt"
			if in_prompt then
				return false
			end

			-- Otherwise, complete away!
			return true
		end,
		sources = {
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "path" },
		},
		formatting = lsp_zero.cmp_format(),
		mapping = cmp.mapping.preset.insert({
			["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
			["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		}),
	})
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})
end

return config

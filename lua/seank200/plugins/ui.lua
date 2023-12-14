local config = {}
local opts = { noremap = true, silent = true }

config.neo_tree = function()
	local command = require("neo-tree.command")

	require("neo-tree").setup({
		close_if_last_window = false,
		enable_git_status = true,
		enable_diagnostics = true,
		default_component_configs = {
			git_status = {
				symbols = {
					added = "A",
					deleted = "D",
					modified = "M",
					renamed = "R",
					untracked = "U",
					ignored = "-",
					unstaged = "",
					staged = "+",
					conflict = "!",
				},
			},
		},
	})

	vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
	vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
	vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
	vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵 ", texthl = "DiagnosticSignHint" })

	vim.keymap.set("n", "<leader>e", function()
		command.execute({ toggle = true })
	end)
	vim.keymap.set("n", "<leader>be", function()
		command.execute({ source = "buffers", toggle = true })
	end)
	vim.keymap.set("n", "<leader>ge", function()
		command.execute({ source = "git_status", toggle = true })
	end)
end

config.illuminate = function()
	require("illuminate").configure({
		delay = 500,
		large_file_cutoff = 2000,
		large_file_overrides = {
			providers = { "lsp" },
		},
	})
end

config.trouble = function()
	require("trouble").setup({
		use_diagnostic_signs = true,
	})
	vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<CR>", opts)
	vim.keymap.set("n", "<leader>xX", "<cmd>TroubleToggle workspace_diagnostics<CR>", opts)
end

config.todo_comments = function()
	require("todo-comments").setup({
		signs = false,
	})
	vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", opts)
end

config.bufferline = function()
	require("bufferline").setup({
		options = {
			show_close_icon = false,
			show_buffer_close_icons = false,
		},
	})
	vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
	vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", opts)
	vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", opts)
end

config.dashboard = function()
	local logo = [[
                              ______ _____________________ 
    __________________ __________  //_/_|__ \_  __ \_  __ \
    __  ___/  _ \  __ `/_  __ \_  ,<  ____/ /  / / /  / / /
    _(__  )/  __/ /_/ /_  / / /  /| | _  __// /_/ // /_/ / 
    /____/ \___/\__,_/ /_/ /_//_/ |_| /____/\____/ \____/  
    ]]
	logo = string.rep("\n", 4) .. logo .. "\n"
	require("dashboard").setup({
		theme = "hyper",
		hide = {
			statusline = false,
		},
		config = {
			header = vim.split(logo, "\n"),
			shortcut = {
				{ icon = " ", desc = "Files", key = "f", action = "Telescope find_files", group = "String" },
				{ icon = "󱎸 ", desc = "Text", key = "g", action = "Telescope live_grep", group = "Constant" },
				{
					icon = "󰀖 ",
					desc = "Config",
					key = "c",
					action = "lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') })",
					group = "Statement",
				},
				{
					icon = " ",
					desc = "Restore",
					key = "s",
					action = "lua require('persistence').load()",
					group = "Character",
				},
				{ icon = " ", desc = "Quit", key = "q", action = "qa" },
			},
			project = { enable = false },
			mru = {
				limit = 8,
				cwd_only = true,
			},
			footer = {},
		},
	})
end

config.lualine = function()
	local lualine_edge = {
		{
			function()
				return " "
			end,
			padding = 0,
		},
	}

	local section_filetype = {
		"filetype",
		padding = { left = 1, right = 0 },
		colored = true,
		icon_only = true,
	}
	local section_filename = {
		"filename",
		path = 1,
		symbols = {
			modified = "[+]", -- Text to show when the file is modified.
			readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
			unnamed = "[No Name]", -- Text to show for unnamed buffers.
			newfile = "[New]", -- Text to show for newly created file before first write
		},
	}
	local section_branch = {
		"branch",
		icon = "",
	}
	require("lualine").setup({
		options = {
			component_separators = "",
			section_separators = "",
			disabled_filetypes = {
				statusline = {
					"neo-tree",
					"Telescope",
				},
			},
			globalstatus = true,
		},
		sections = {
			lualine_a = lualine_edge,
			lualine_b = { section_branch },
			lualine_c = { section_filetype, section_filename, "diagnostics", "diff" },
			lualine_x = { "selection", "progress", "location" },
			lualine_y = {},
			lualine_z = lualine_edge,
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	})
end

return config

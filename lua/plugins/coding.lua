return {
  {
    "hrsh7th/nvim-cmp",
    -- opts = {
    --   enabled = function()
    --     local context = require("cmp.config.context")
    --     return not context.in_syntax_group("Comment")
    --   end,
    -- },
    opts = function(_, opts)
      opts.enabled = function()
        -- Do not autocomplete inside comments
        local context = require("cmp.config.context")
        if context.in_treesitter_capture("comment") or context.in_syntax_group("Comment") then
          return false
        end

        -- Do not autocomplete in telescope
        local in_prompt = vim.api.nvim_buf_get_option(0, "buftype") == "prompt"
        if in_prompt then
          return false
        end
        return true
      end
    end,
  },

  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "git reset --hard HEAD && cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  -- {
  --   "lukas-reineke/headlines.nvim",
  --   opts = function(_, opts)
  --     opts.markdown.fat_headline_upper_string = "▁"
  --     opts.markdown.fat_headline_lower_string = "▔"
  --     vim.notify("markdown settings")
  --   end,
  -- },
}

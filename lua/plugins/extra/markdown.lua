return {
  {
    "lukas-reineke/headlines.nvim",
    opts = function(_, opts)
      opts.markdown.fat_headline_lower_string = "-"
      opts.markdown.fat_headline_upper_string = "-"
      vim.notify("markdown settings")
    end,
  },
}

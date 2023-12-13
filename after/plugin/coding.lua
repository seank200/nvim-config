require("mini.bufremove").setup()
require("mini.comment").setup({
    options = {
        custom_commentstring = function()
            return require('ts_context_commentstring').calculate_commentstring() or vim.bo.commentstring
        end,
    },
})
require("mini.pairs").setup()
require("mini.surround").setup({
    mappings = {
        add = 'gsa',
        delete = 'gsd',
        find = 'gsf',
        find_left = 'gsF',
        highlight = 'gsh',
        replace = 'gsr',
        update_n_lines = 'gsn',
    }
})

require('ts_context_commentstring').setup {
    enable_autocmd = false,
}


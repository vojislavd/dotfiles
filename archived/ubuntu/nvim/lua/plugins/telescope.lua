return {
	'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup {
            extensions = {
            },
        }

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { silent = true, desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { silent = true, desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { silent = true, desc = 'Telescope buffer' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { silent = true, desc = 'Telescope help tags' })
    end,
}

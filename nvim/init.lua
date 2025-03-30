require('config.lazy')
require('options')
require('keymaps')

-- This options are overridden by php.vim so need to be set again
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'php',
    callback = function()
        vim.opt_local.smartindent = true
        vim.opt_local.autoindent = true
    end,
})

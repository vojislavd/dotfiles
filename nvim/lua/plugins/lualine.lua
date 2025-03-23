return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local lualine = require('lualine')

        lualine.setup({
            options = {
                section_separators = '',
                component_separators = '',
                globalstatus = true,
            },
            sections = {
                lualine_a = {
                    'mode',
                },
                lualine_b = {
                    'branch',
                    {
                        'diff',
                        symbols = { added = ' ', modified = ' ', removed = ' ' }
                    },
                    function()
                        return '󰅭 ' .. vim.pesc(tostring(#vim.tbl_keys(vim.lsp.buf_get_clients())) or '')
                    end,
                    {
                        'diagnostics',
                        sources = { 'nvim_diagnostic' },
                    }
                },
                lualine_c = {
                    'filename',
                },
                lualine_x = {},
                lualine_y = {
                    'filetype',
                },
                lualine_z = {
                    'searchcount',
                    'selectioncount',
                    'location',
                    'progress',
                }
            }
        })
    end,
}

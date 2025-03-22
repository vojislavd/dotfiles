return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Setup your LSP configurations here
        local lspconfig = require('lspconfig')

        lspconfig.phpactor.setup({})

        require('lspconfig').intelephense.setup({
            commands = {
                IntelephenseIndex = {
                    function()
                        vim.lsp.buf.execute_command({ command = 'intelephense.index.workspace' })
                    end,
                },
            },

        })
    end
}


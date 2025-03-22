return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Setup your LSP configurations here
        local lspconfig = require('lspconfig')

        lspconfig.phpactor.setup({
            cmd = { 'phpactor', 'language-server' },
            filetypes = { 'php' },
            on_attach = function(client, bufnr)
                require'cmp'.setup.buffer { sources = { { name = 'nvim_lsp' } } }
            end,
        })
    end
}


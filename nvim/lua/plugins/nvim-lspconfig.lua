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

                vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
            end,
        })
    end
}


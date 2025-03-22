return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Setup your LSP configurations here
        local lspconfig = require('lspconfig')

        lspconfig.phpactor.setup({})
    end
}


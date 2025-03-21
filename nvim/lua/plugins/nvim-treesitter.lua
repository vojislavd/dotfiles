return {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { 
                "bash",
                "blade",
                "comment",
                "css",
                "diff",
                "dockerfile",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "php",
                "php_only",
                "phpdoc",
                "sql",
                "vim",
                "vue",
                "xml",
                "yaml",
            },
            auto_install = true,
            highlight = {
                enable = true,
            },
        }
    end,
}

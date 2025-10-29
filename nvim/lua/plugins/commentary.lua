return {
	'tpope/vim-commentary',

    -- Configure comments for Blade files
    config = function()
        vim.api.nvim_create_autocmd("Filetype", {
            pattern = "blade",
            callback = function()
                vim.opt_local.commentstring = "{{-- %s --}}"
            end,
        })
    end,
}


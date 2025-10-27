return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config('intelephense', {
			commands = {
				IntelephenseIndex = {
					function()
						vim.lsp.buf.execute_command({ command = 'intelephense.index.workspace' })
					end,
				},
			},

		})

		vim.lsp.enable('intelephense')
	end
}


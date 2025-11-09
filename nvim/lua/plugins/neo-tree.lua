return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},
	keys = {
		{ '<leader>n', ':Neotree reveal toggle<CR>' },
	},
	lazy = false,
	---@module 'neo-tree'
	---@type neotree.Config?
	opts = {
        window = {
            position = 'right'
        },
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
            },
        },
	},
}


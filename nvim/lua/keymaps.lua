-- Move lines up and down
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move -2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move -2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv==gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv==gv")

-- Go to the definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>', { noremap = true, silent = true })

-- Reselect visual selection after intendintg
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Keep the cursor position when yanking a visual selection
vim.keymap.set('v', 'y', 'myy`y')

-- Disable q:
vim.keymap.set('n', 'q:', ':q')

-- Paste replace visual selection without copying it
vim.keymap.set('v', 'p', '"_dP')

-- Quickly insert of a trailing ; or , from insert mode
vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')

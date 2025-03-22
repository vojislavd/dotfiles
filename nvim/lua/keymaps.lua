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

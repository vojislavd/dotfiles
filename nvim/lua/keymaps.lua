-- Move lines up and down
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move -2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move -2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv==gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv==gv")

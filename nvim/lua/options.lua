vim.opt.number = true				            -- display line number
vim.opt.relativenumber = true 			        -- display relative line number
vim.opt.title = true 				            -- display file title
vim.opt.scrolloff = 8 				            -- always display 8 rows above/below when scrolling
vim.opt.sidescrolloff = 8 			            -- always display 8 columns left/right when scrolling
vim.opt.mouse = 'a' 				            -- enable mouse for all modes
vim.opt.splitbelow = true 			            -- move to below window on horizontal split
vim.opt.splitright = true 			            -- move to right window on vertical split
vim.opt.clipboard = 'unnamedplus' 		        -- Use Linux system clipboard
vim.opt.undofile = true 			            -- persistent undo
vim.opt.fillchars:append({ eob = ' ' })	        -- remove the ~ from end of buffer
vim.opt.list = true				                -- enable the below listchars
vim.opt.listchars = { trail = '·', tab = '  ' }	-- add dot as trail char
vim.opt.expandtab = true			            -- use spaces instead of tab	
vim.opt.smartindent = true                      -- enable automatic indentation
vim.opt.autoindent = true                       -- enable automatic indentation
vim.opt.cmdheight = 0                           -- set height of command line area
vim.opt.shiftwidth = 4                          -- number of spaces for shifting with < or >
vim.opt.tabstop = 4                             -- number of spaces tab character represents
vim.opt.softtabstop = 4                         -- number of spaces for tab when expandtab enabled
vim.opt.termguicolors = true                    -- enable true color support
vim.opt.spell = false                           -- disable spell checking
vim.opt.ignorecase = true                       -- set search patterns to be case insensitive
vim.opt.smartcase = true                        -- enable search patterns to be case sensitive only if search patterns contains uppercase letters
vim.opt.wrap = false                            -- disable wrap text
vim.opt.breakindent = true                      -- indent wrapped lines
vim.opt.linebreak = true                        -- wrapped lines will break at word bounderies (spaces, punctuation)
vim.opt.confirm = true                          -- ask for confirmation instead of erroring when try to exit unsaved file
vim.opt.backup = true                           -- automatically save a backup file
vim.opt.backupdir:remove('.')                   -- keep backups out of current directory
vim.opt.shortmess:append({ I = true })          -- disable the splash screen
vim.opt.wildmode = 'longest:full,full'          -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.showmode = false                        -- show current mode in the command line
vim.opt.updatetime = 100                        -- update time to be 100ms (autocompletion, syntax checking, etc)
vim.opt.exrc = true                             -- read local configuration file
vim.opt.secure = true                           -- prevent unsafe commands from local .exrc or other scripts
vim.opt.titlestring = '%f | nvim'               -- Change format of title to be filename | nvim


" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" Incremental search (search as type)
set incsearch

" Ignore case when searching
set ignorecase

" But use case-sensitive search if uppercase letters are used
set smartcase

" Highlight search results
set hlsearch

" Keybinding Ctrl + n for toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

" NERDTree Plugin
Plug 'preservim/nerdtree'

call plug#end()

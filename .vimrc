
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

" Leader
let mapleader = " "

" Ctrl+n = Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Ctrl+p = Search files
nmap <C-p> :Files<CR>
 
" space+t = Next tab
nnoremap <Leader>t :tabn<CR>

" space+w = Close tab
nnoremap <Leader>w :tabclose<CR>

call plug#begin('~/.vim/plugged')

" NERDTree plugin
Plug 'preservim/nerdtree'

" fzf plugin
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()


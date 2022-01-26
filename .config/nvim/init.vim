"****************
"General
"****************

syntax on
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set autoread
set clipboard=unnamedplus

"****************
"Plugin
"****************

call plug#begin()

"Colour scheme
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" For Vim-Plug
Plug 'EdenEast/nightfox.nvim'

" Language packs
Plug 'sheerun/vim-polyglot'

" Buffer navigation
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

set encoding=UTF-8

call plug#end()

" Colors in
colorscheme nightfox
let g:airline_theme='onehalfdark'

" Buffer navigation
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

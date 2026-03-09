"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=899

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * silent! checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<Space>"

" Fast saving
nnoremap <leader>w :w!<cr>

" Fast quit
nnoremap <leader>q :q<cr>

" Always show current position
set ruler
set nu

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

set wrap
set linebreak
set breakindent 

" Markdown editing tweaks
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab textwidth=0 linebreak breakindentopt=shift:2 nu!

set noswapfile 
set undodir=~/.vim/undodir
set undofile
set undolevels=1000

set statusline=%F
set laststatus=2

set mouse=nvi


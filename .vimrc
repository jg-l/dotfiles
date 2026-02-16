"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=899

" Enable filetype plugins
filetype plugin on
" Enable filetype-specific indentation
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
" Automatically check for file changes when gaining focus or entering buffer
au FocusGained,BufEnter * silent! checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Always show current position
set ruler
" Show line numbers
set nu

" No annoying sound on errors
set noerrorbells
" Disable visual bell (flashing screen)
set novisualbell
" Set terminal visual bell code to nothing (disable visual bell completely)
set t_vb=
" Set timeout for key codes to 500ms
set tm=500

" Enable syntax highlighting
syntax enable

" Wrap long lines instead of having them go off screen
set wrap
" Break lines at word boundaries instead of character boundaries
set linebreak
" Preserve indentation when wrapping lines
set breakindent

" Markdown editing tweaks (2-space indentation, 140 char width, visual line breaks)
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab textwidth=140 linebreak breakindentopt=shift:2

" Disable swap files (prevents .swp file creation)
set noswapfile
" Set directory for persistent undo files
set undodir=~/.vim/undodir
" Enable persistent undo (undo history survives after closing file)
set undofile
" Maximum number of changes that can be undone
set undolevels=1000

" Display full file path in the status line
set statusline=%F
" Always show status line (2 = always, 1 = only if there are multiple windows)
set laststatus=2

set mouse=nvi


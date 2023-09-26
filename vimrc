source $VIMRUNTIME/defaults.vim

syntax on
filetype plugin indent on

set expandtab
set shiftwidth=2
set tabstop=2
set wildmenu
set display=truncate
set nowrap
set hidden
set hlsearch
set incsearch
set ruler
set showcmd
set showmode
set number
set relativenumber
set ignorecase
set smartcase
set scrolloff=8
set tags=./tags,./TAGS,tags,TAGS,.tags,./.tags

set background=dark
"colorscheme solarized

let g:netrw_banner=0
"let g:netrw_liststyle=3 "This breaks symlinks in netrw


:runtime! ftplugin/man.vim

nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

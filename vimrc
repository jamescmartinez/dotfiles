" Vundle
set nocompatible
" Filetype on and then off to fix Mac errors
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Vundle bundles
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
filetype plugin on
" End Vundle

syntax on
set number
set hlsearch
set showmatch
set incsearch
set ignorecase
set cursorline
set guifont=Monaco:h14

" Indentation
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Nerdtree
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0 

" Color Scheme
set background=dark
colorscheme solarized

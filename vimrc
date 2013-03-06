set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
filetype plugin indent on

syntax on
set background=dark
colorscheme solarized
set number
set guifont=Monaco:h14

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
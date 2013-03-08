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
filetype plugin on
" End Vundle

" Colors / Fonts
syntax on
set background=dark
colorscheme solarized
set number
set guifont=Monaco:h14

" Indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

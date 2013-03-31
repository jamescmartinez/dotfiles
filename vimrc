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
Bundle 'wincent/Command-T'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tomtom/tcomment_vim'
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
set autochdir
set backspace=indent,eol,start
set nowrap

" Indentation
set autoindent 
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Color Scheme
set background=dark
colorscheme solarized
highlight clear SignColumn

let mapleader=","

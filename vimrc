" Make Vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Change mapleader
let mapleader=","
" Don't add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles, and undo history
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Line numbers
set number
" Automatically indent
set autoindent 
" Make tabs two spaces wide 
set tabstop=2
" Insert mode tabs
set expandtab
" Make insert tabs two spaces wide
set softtabstop=2
" Reindent operations two spaces wide
set shiftwidth=2
" Show matching braces
set showmatch
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Don't reset cursor to start of line when moving around
set nostartofline
" Set EOL color column
set colorcolumn=80
" Show the cursor position
set ruler
" Don't word wrap
set nowrap
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it's being typed
set showcmd
" Set scrolling three lines before the horizontal window border
set scrolloff=3
" Set font
set guifont=Monaco:h14
" Reload files when changed on disk, i.e. via `git checkout`
set autoread
" Yank and paste with the system keyboard
set clipboard=unnamed
" Show trailing whitespace
set list
set listchars=tab:▸\ ,trail:▫
" Close NERDTree when all other windows close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" CtrlP mappings
map <leader>t :CtrlP<CR>

" Vundle
" Filetype on and then off to fix Mac errors
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Vundle bundles
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tomtom/tcomment_vim'
" Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/greplace.vim'
Bundle 'tpope/vim-endwise'
filetype plugin on
" End Vundle

" Color Scheme
set background=dark
colorscheme solarized
" Solarized git gutter fix
highlight clear SignColumn

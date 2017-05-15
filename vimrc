" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
call plug#end()

" enable filetype detection
filetype plugin indent on

" color scheme
set termguicolors
colorscheme one
set background=dark

" tabs and indentation
set expandtab
set softtabstop=2
set shiftwidth=2

" 80 char line
set textwidth=80
set colorcolumn=+1

" number gutter
set number
set numberwidth=5

" split directions
set splitbelow
set splitright

" misc
set autoindent " automatically indent
set autoread " automatically check for file changes and refresh
set backspace=indent,eol,start " enable backspace in insert mode
set clipboard+=unnamedplus " use the system clipboard
set cursorline " highlight current line
set exrc " load local .vimrc
set hlsearch " highlight search results
set incsearch " show search results while searching on every change
set laststatus=2 " always show the status line
set list listchars=tab:>·,trail:-,nbsp:+ " show tab, trail, and nbsp characters
set ruler " show the cursor position in status line
set showcmd " show command in progress in status line
set showmatch " highlight matching braces/parentheses

" maps
nnoremap <C-p> :FZF<CR>

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
call plug#end()

" color scheme
syntax enable
set termguicolors
colorscheme one
set background=dark

" tabs and indentation
filetype indent on
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" misc
set number " show line numbers
set showcmd " show command in progress in bottom bar on right
set cursorline " highlight current line
set showmatch " highlight matching braces/parentheses
set clipboard=unnamed " use the system clipboard

" maps
nnoremap <C-p> :FZF<CR>

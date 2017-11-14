" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
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
set relativenumber
set number
set numberwidth=5

" split directions
set splitbelow
set splitright

" backup and swap
set nobackup
set nowritebackup
set noswapfile

" misc
set autoindent " automatically indent
set autoread " automatically check for file changes and refresh
set autowrite " automatically write the file
set backspace=indent,eol,start " enable backspace in insert mode
set cursorline " highlight current line
set exrc " load local .vimrc
set hlsearch " highlight search results
set incsearch " show search results while searching on every change
set laststatus=2 " always show the status line
set list listchars=tab:>·,trail:-,nbsp:+ " show tab, trail, and nbsp characters
set nowrap " turn off word wrapping
set ruler " show the cursor position in status line
set showcmd " show command in progress in status line
set showmatch " highlight matching braces/parentheses

" maps
" for a good explanation of all of the mapping commands go to:
" http://stackoverflow.com/a/3776182/801858
nnoremap <C-p> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>

" window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

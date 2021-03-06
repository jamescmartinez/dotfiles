" enable filetype detection
filetype plugin indent on

" automatically indent
set autoindent

" color scheme
set termguicolors
" colorscheme one
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

" search
set hlsearch " highlight search results
set incsearch " show search results while searching on every change

" status line
set laststatus=2 " always show the status line
set ruler " show cursor position
set showcmd " show command in progress

" backup and swap
set nobackup
set nowritebackup
set noswapfile

" misc
set autoread " automatically check for file changes and refresh
set autowrite " automatically write the file
set backspace=indent,eol,start " enable backspace in insert mode
set clipboard^=unnamed " adds system clipboard to vim clipboards
set exrc " load local .vimrc
set list listchars=tab:>·,trail:-,nbsp:+ " show tab, trail, and nbsp characters
set nowrap " turn off word wrapping
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

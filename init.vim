" neovim
call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

let mapleader = " "

filetype plugin on
filetype plugin indent on

set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set mouse=a " enable mouse for all mode
set cursorline
set ruler

set autoindent
set smartindent

set noswapfile
set nojoinspaces
set number
set laststatus=2
set ttimeout
set ttimeoutlen=10
set termguicolors
set ignorecase
set relativenumber

set tabstop=4
set softtabstop=0
set shiftwidth=4
set shiftround
set expandtab

"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1


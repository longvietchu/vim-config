call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

filetype plugin indent on

"Todo file
autocmd BufNewFile,BufRead *.todo set syntax=todo

" Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set mouse=a " enable mouse for all mode
set cursorline

set foldmethod=indent
set foldlevel=99

let g:is_posix = 1

set noswapfile
set nojoinspaces
set wrap
set number
set ttyfast
set laststatus=2
set ttimeout
set ttimeoutlen=10
"set termguicolors
set ignorecase
set relativenumber

" Indent Guide
let g:indentLine_char = '│'
let g:indentLine_color_gui = '#363442'

" JS config
let g:javascript_plugin_jsdoc = 1
let g:polyglot_disabled = ['jsx', 'tsx', 'js', 'ts']
let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'tsx']


vnoremap p "_dP

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set listchars=tab:>·,trail:~,extends:>,precedes:<
set list

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set autoindent
set smartindent

" Key binding
let mapleader=","
nnoremap <Leader>l :vsplit<CR>
nnoremap <Leader>k :split<CR>
nnoremap <Leader>wh :wincmd h<CR>
nnoremap <Leader>wl :wincmd l<CR>
nnoremap <Leader>wk :wincmd k<CR>
nnoremap <Leader>wj :wincmd j<CR>
nnoremap <Leader>w= :wincmd =<CR>
nnoremap <Leader>e :QuickRunExecute<CR>
nnoremap <Leader>wb :e#<CR>
nnoremap <Leader>qq :bd<CR>
nnoremap <Leader>qk :call DeleteCurrentFileAndBuffer()<CR>
nnoremap <Leader>ss :mksession! .vimsession<CR>
nnoremap <Leader>sr :so .vimsession<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

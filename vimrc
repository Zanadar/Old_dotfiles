set nocompatible
set autowrite

let mapleader = " "
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:NERDTreeWinPos = "right"

set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler

syntax enable
set background=dark

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set number
set showcmd
set cursorline

filetype plugin indent on

set wildmenu

set lazyredraw

set showmatch
set incsearch
set laststatus=2

" Color scheme
colorscheme solarized
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Show extra whitespace
set list

execute pathogen#infect()
inoremap <expr> dt strftime("%Y-%m-%d %T")             

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

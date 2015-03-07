set nocompatible
set autowrite

set rtp+=~/dotfiles/vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'rking/ag.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-haml'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'Yggdroot/indentLine'

call vundle#end()            " required
filetype plugin indent on  

let mapleader = ","
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:NERDTreeWinPos = "right"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

runtime macros/matchit.vim
set nobackup
set nowritebackup
set noswapfile
set history=1000
set ruler
syntax enable
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set number
set showcmd
set cursorline
set nowrap
set modelines=0
set wildmenu
set lazyredraw
set showmatch
set incsearch
set laststatus=2

" Color scheme
colorscheme jellybeans

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Show extra whitespace
set list

inoremap <expr> dt strftime("%Y-%m-%d %T")             

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set encoding=utf-8

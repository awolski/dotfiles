" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required

filetype plugin indent on    " required

set nocompatible              " be iMproved, required
filetype off                  " required

" Colors -------------------------------------
syntax enable                 " enable syntax processing
"set background=dark
"let g:solarized_termtrans = 1
"colorscheme solarized 

" Spaces & Tabs ------------------------------
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI Config ----------------------------------
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Searching ----------------------------------
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding ------------------------------------
" Line Shortcuts -----------------------------
" Leader Shortcuts ---------------------------
" Airline ------------------------------------
set laststatus=2
" CtrlP --------------------------------------
" NERDTree -----------------------------------
" Syntastic ----------------------------------
" Launch Config ------------------------------
" Tmux ---------------------------------------
" MacVim -------------------------------------
" AutoGroups ---------------------------------
" Backups ------------------------------------
" Custom Functions ---------------------------


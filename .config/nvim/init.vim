call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ledger/vim-ledger'
Plug 'dense-analysis/ale'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme gruvbox

syntax enable             " enable syntax processing

set nocompatible          " be iMproved, required
set ts=2                  " number of visual spaces per TAB
set sw=2                  " ?
set sts=2                 " number of spaces in tab when editing
set expandtab       		  " tabs are spaces
set number relativenumber
set nu rnu
set scrolloff=8             " keep n lines visible when scrolling
set path+=**              " search down into subfolders
set wildmenu              " display all matching files when we tab complete

:imap jk <Esc>
:vmap jk <Esc>
nnoremap : :!
nnoremap ; :

" Ledger
let g:ledger_extra_options = '--pedantic --explicit'
let g:ledger_detailed_first = 1
au FileType ledger :setlocal sw=4 ts=4 sts=4
au FileType ledger inoremap <silent> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
au FileType ledger vnoremap <silent> <Tab> :LedgerAlign<CR>
au FileType ledger nnoremap lf :LedgerAlignBuffer<CR>
autocmd BufWritePre *.ledger :%s/\s\+$//e

let g:ale_dockerfile_hadolint_use_docker = 'yes'
let g:ale_completion_enabled = 1
"filetype plugin indent on    " required
"
"filetype off                  " required
"
"" Colors -------------------------------------
"set background=light
"
"" Spaces & Tabs ------------------------------
"
"" UI Config ----------------------------------
"set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
"filetype indent on      " load filetype-specific indent files
"set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when we need to.
"set showmatch           " highlight matching [{()}]
"
"" Searching ----------------------------------
"set incsearch           " search as characters are entered
"set hlsearch            " highlight matches
"" turn off search highlight
"nnoremap <leader><space> :nohlsearch<CR>
"
"" Airline ------------------------------------
"set laststatus=2
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"" Launch Config ------------------------------
"" Tmux ---------------------------------------
"" AutoGroups ---------------------------------
"" Backups ------------------------------------
"" Custom Functions ---------------------------
"
"" Uncategorised ------------------------------

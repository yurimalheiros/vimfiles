" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles (Vundle)
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'sukima/xmledit'
Bundle 'vim-scripts/UltiSnips'

filetype plugin indent on

" General
set undolevels=1000
set undodir=~/.vim/undodir
set undofile
set wildchar=<Tab> wildmenu wildmode=full
let mapleader=","

" Visual
set guifont=Anonymous\ Pro:h14
syntax on
colorscheme codeschool
set number          "show line numbers
set showmode        "show current mode
set linespace=3    
set guioptions-=T   "hide toolbar
set guioptions-=m   "hide menubar
set guioptions-=r   "hide scrollbar
set guioptions-=L   "hide left scrollbar
set ruler
set cursorline

" Search
set incsearch       "incremental search
set hlsearch        "highlight searches
set ignorecase
set smartcase
set sm

" Indent
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Filetypes
autocmd Filetype html setlocal tabstop=2

" Fold
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" Load ftplugins and indent files
filetype on
filetype plugin on
filetype indent on

" Try to make possible to navigate within lines of wrapped lines
nmap <silent> <Down> gj
nmap <silent> <Up> gk
set fo=l

" CtrlP
nnoremap <leader>t :CtrlP .<Cr>
nnoremap <leader>v :CtrlPBuffer<Cr>
nnoremap <leader>r :CtrlPClearAllCaches<Cr>
set wildignore+=*.pyc,*.swp

" UltiSnips
let g:UltiSnipsExpandTrigger ='<tab>'
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" Ack
let g:ackprg="ack -H --nocolor --nogroup --column"

" Spell
nnoremap <F2> :setlocal spell! spelllang=pt<CR>

" Marked
command! Marked :silent !open -a Marked.app '%:p'

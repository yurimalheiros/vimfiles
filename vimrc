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
Bundle 'airblade/vim-gitgutter'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-markdown'
Bundle 'w0ng/vim-hybrid'
Bundle 'terryma/vim-expand-region'
Bundle 'chriskempson/base16-vim'

" snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

" fix python path
let $PATH .= ':/usr/local/share/python'

filetype plugin indent on

" General
set undolevels=1000
set undodir=~/.vim/undodir
set undofile
set wildchar=<Tab> wildmenu wildmode=full
let mapleader=","

" Visual
set guifont=Meslo\ LG\ L\ for\ Powerline:h12
syntax on
colorscheme base16-eighties
set background=dark
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

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

" UltiSnips
let g:UltiSnipsExpandTrigger ='<tab>'
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" autocmd FileType python set ft=python.django
" autocmd FileType python set ft=python
autocmd FileType html set ft=htmldjango.html
set runtimepath+=~/.vim/bundle/vim-snippets

" Indent guides
let g:indent_guides_guide_size = 1

" Ack
let g:ackprg = "ag --nogroup --nocolor --column"

" Spell
nnoremap <F2> :setlocal spell! spelllang=pt<CR>

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Syntastic
let g:syntastic_python_checkers = ['flake8']

" Expand region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)


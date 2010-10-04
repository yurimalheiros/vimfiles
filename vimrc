"pathogen
filetype off
call pathogen#runtime_append_all_bundles()

"general
set undolevels=1000
set wildchar=<Tab> wildmenu wildmode=full

"visual
set lines=31 columns=95
colorscheme molokai
syntax on
set number          "show line numbers
set showmode        "show current mode
set linespace=3    
set guioptions-=T   "hide toolbar
set guioptions-=m   "hide menubar

"search
set incsearch       "incremental search
set hlsearch        "highlight searches
set sm

"indent
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"filetypes
autocmd Filetype html setlocal tabstop=2
autocmd FileType python set ft=python.django    "for SnipMate
autocmd FileType html set ft=htmldjango.html    "for SnipMate

"fold
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"load ftplugins and indent files
filetype on
filetype plugin on
filetype indent on

"try to make possible to navigate within lines of wrapped lines
nmap <silent> <Down> gj
nmap <silent> <Up> gk
set fo=l

"ctrl+s to save
nnoremap <C-s> :w<CR>

"ctrl+c in visual mode to copy to clipboard
vnoremap <C-Insert> "+y

"smart home/end
" map <Home> to move to first word in line
" if at first word, move to beginning of line
nnoremap <silent> <Home> :call SmartHome("n")<CR>
inoremap <silent> <Home> <C-O>:call SmartHome("i")<CR>
vnoremap <silent> <Home> <Esc>:call SmartHome("v")<CR>
function! SmartHome(mode)
  if col('.') == 1
    if line('.') == 1
      return
    else
      normal! ^
    endif
  elseif strpart(getline('.'), -1, col('.')) =~ '^\s\+$'
    normal! 0
  else
    normal! ^
  endif
  if a:mode == "v"
    normal! msgv`s
  endif
endfun

" CommandT
nnoremap <C-t> :<C-u>CommandT<CR>

" BufExplorer
nnoremap <C-b> :<C-u>BufExplorer<Cr>

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

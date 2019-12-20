" BASICS
set nocompatible		" Don't try to be vi compatible
syntax on				" Turn on syntax highlighting
set visualbell			" Blink cursor on error instead of beeping (grr)
colorscheme slate		" Color scheme

" UI CONFIG
set number rnu          " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype plugin on      " load filetype-specific plugin files
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set ruler				" always show current position
set splitbelow			" fix horizontal split
set splitright			" fix vertical split

" TABS & SPACES
set tabstop=4			" number of visual spaces per TAB
set softtabstop=4		" number of spaces in tab when editing
set expandtab			" tabs are spaces

" SEARCHING
set incsearch			" search as characters are entered
set hlsearch			" highlight matches
set ignorecase			" Ignore case when searching

" FOLDING
set foldenable			" enable folding
set foldlevelstart=10	" open most folds by default
set foldnestmax=10		" 10 nested fold max
set foldmethod=indent	" fold based on indent level
nnoremap <space> z		" remap <space> folding to z


" MAPPING
:let mapleader = ","		" Pick a leader key

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" Fast (forced) saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" SNIPPETS
nnoremap <leader>html :-1 read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap <leader>cpp :-1 read $HOME/.vim/.skeleton.cpp<CR>3j3la
nnoremap <leader>py :-1 read $HOME/.vim/.skeleton.py<CR>j3la

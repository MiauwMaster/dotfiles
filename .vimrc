" BASICS
set nocompatible		                " Don't try to be vi compatible
syntax on				                " Turn on syntax highlighting
colorscheme slate		                " Color scheme

" DISABLE BELL 
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set vb t_vb=

" UI CONFIG
set number rnu                          " show line numbers
set showcmd                             " show command in bottom bar
filetype plugin on                      " load filetype-specific plugin files
filetype indent on                      " load filetype-specific indent files
set omnifunc=syntaxcomplete#Complete    " omnifunc autocomplete
set wildmenu                            " visual autocomplete for command menu
set ruler				                " always show current position
set splitbelow			                " fix horizontal split
set splitright			                " fix vertical split

" TABS & SPACES
set tabstop=4			                " number of visual spaces per TAB
set softtabstop=4		                " number of spaces in tab when editing
set expandtab			                " tabs are spaces
set shiftwidth=4                        " Single tab autoindent

" SEARCHING
set incsearch			                " search as characters are entered
set hlsearch			                " highlight matches
set ignorecase			                " Ignore case when searching

" FOLDING
set foldenable			                " enable folding
set foldlevelstart=10	                " open most folds by default
set foldnestmax=10		                " 10 nested fold max
set foldmethod=indent	                " fold based on indent level
nnoremap <space> z		                " remap <space> folding to z

" MAPPING
:let mapleader = ","		" Pick a leader key

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" Fast (forced) saving
nnoremap <leader>w :w!<cr>

" Remap <C-X><C-O> autocomplete to <C-@> which really means <C-SPACE> 
inoremap <C-@> <C-X><C-O>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Autoindent entire file and return to last pos
nmap <leader>g gg=G''

" SNIPPETS
nnoremap <leader>html :-1 read $HOME/.vim/.skeleton.html<CR>8j10la
nnoremap <leader>cpp :-1 read $HOME/.vim/.skeleton.cpp<CR>3j3la
nnoremap <leader>py :-1 read $HOME/.vim/.skeleton.py<CR>j3la

" LOAD PLUGINS
packloadall

" LOAD HELPTAGS
silent! helptags ALL


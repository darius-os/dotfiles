colorscheme gruvbox
syntax on
filetype plugin indent on
set hidden
set magic
set incsearch
set ignorecase
set smartcase
set hlsearch
set background=dark
set number
set termguicolors
set cursorline
set shell=$SHELL
set encoding=utf-8
set textwidth=100
set mouse=a
set splitbelow splitright
set scrolloff=3
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set shortmess+=c
" set signcolumn=yes

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages

let $FZF_DEFAULT_COMMAND = 'rg --files'
au FileType c,cpp,objc,objcpp,json,py,sh,bash,lisp,clj,scheme call rainbow#load()
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


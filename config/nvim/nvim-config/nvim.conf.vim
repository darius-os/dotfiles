colorscheme dracula
syntax on
filetype plugin indent on
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set magic
set incsearch
set ignorecase
set smartcase
set number
set termguicolors
" set cursorline
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
set signcolumn=yes

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages

let $FZF_DEFAULT_COMMAND = 'rg --files'
au FileType c,java,zsh,cl,rkt,h,pl,cpp,objc,objcpp,json,py,sh,bash,lisp,clj,scheme call rainbow#load()
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


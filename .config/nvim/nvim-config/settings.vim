colorscheme nord

let mapleader=","
let maplocalleader="m"

syntax enable
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set splitright
set splitbelow
set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set number
set clipboard=unnamedplus
set incsearch
set nowrap
set expandtab


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au! BufWritePost $MYVIMRC source %

"set cmdheight=2
"set pumheight=10
"set iskeyword+=-
"set shortmess+=c
"set laststatus=0
"set nobackup
"set nowritebackup
"set updatetime=300
"set conceallevel=0
"set timeoutlen=100
"set t_Co=256
"set cursorline
"set formatoptions-=ctro
"set noshowmode

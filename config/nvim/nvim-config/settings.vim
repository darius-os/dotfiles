" colorscheme material

let mapleader=","
let maplocalleader="m"

syntax enable
set hidden
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set pumheight=10
set ruler
set cmdheight=2
set iskeyword+=-
set mouse=a
set splitright
set splitbelow
set t_Co=256
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set expandtab
set laststatus=0
set number
"set cursorline
set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=100
set formatoptions-=ctro
set clipboard=unnamedplus
set incsearch
set shortmess+=c


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au! BufWritePost $MYVIMRC source %


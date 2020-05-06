Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'chrisbra/csv.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'davidgranstrom/scnvim'
Plug 'SirVer/ultisnips'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://gitlab.com/code-stats/code-stats-vim.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jlanzarotta/bufexplorer'
Plug 'ryanoasis/vim-devicons'

" Unused
" Plug 'joshdick/onedark.vim'
" Plug 'pbrisbin/vim-mkdir'
" Plug 'jkramer/vim-checkbox', { 'for': 'markdown' }
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'junegunn/goyo.vim'
" Plug 'chrisbra/NrrwRgn'
" Plug 'dahu/VimRegexTutor'
" Plug 'kovisoft/slimv'
" from current buffer
" Plug 'ncm2/vlime'
" Plug 'l04m33/vlime', {'rtp': 'vim/'}
" Plug 'davidhalter/jedi-vim'
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Plug 'vimlab/split-term.vim'
" Plug 'jalvesaq/vimcmdline'

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'chrisbra/csv.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/goyo.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'glts/vim-radical'
" Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vista.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'rbgrouleff/bclose.vim'
" Plug 'SirVer/ultisnips'
Plug 'neomake/neomake'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'kaicataldo/material.vim'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'dahu/VimRegexTutor'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }

" Unused
" Plug 'kovisoft/slimv'
" Plug 'ncm2/vlime'
" Plug 'l04m33/vlime', {'rtp': 'vim/'}
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Plug 'vimlab/split-term.vim'

call plug#end()

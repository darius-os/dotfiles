if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'dahu/VimRegexTutor'
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'   
Plug 'vim-airline/vim-airline'

call plug#end()

"Plug 'alvan/vim-closetag'
"Plug 'chrisbra/csv.vim'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
"Plug 'tpope/vim-surround'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'baabelfish/nvim-nim'
"Plug 'airblade/vim-rooter'
"Plug 'Raku/vim-raku'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'mhinz/vim-startify'
"Plug 'junegunn/goyo.vim'
"Plug 'francoiscabrol/ranger.vim'
"Plug 'frazrepo/vim-rainbow'
"Plug 'glts/vim-radical'
"Plug 'voldikss/vim-floaterm'
"Plug 'justinmk/vim-sneak'
"Plug 'unblevable/quick-scope'
"Plug 'rbgrouleff/bclose.vim'
"Plug 'SirVer/ultisnips'
"Plug 'neomake/neomake'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'kovisoft/slimv'
"Plug 'guns/vim-sexp'
"Plug 'liuchengxu/vim-which-key'

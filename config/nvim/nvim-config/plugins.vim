" main terminal/repl
Plug 'vimlab/split-term.vim'
Plug 'jalvesaq/vimcmdline'

" file accessibility/speedy editing
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'jlanzarotta/bufexplorer'

" Plug 'chrisbra/NrrwRgn'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" theme/added visuals
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'frazrepo/vim-rainbow'

" minor but nice add-ons
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'

" text writing/note taking
" Plug 'joshdick/onedark.vim'
" Plug 'pbrisbin/vim-mkdir'
" Plug 'jkramer/vim-checkbox', { 'for': 'markdown' }
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'junegunn/goyo.vim'

" csv support for quick edits
Plug 'chrisbra/csv.vim'

" when editing i3wm config
Plug 'PotatoesMaster/i3-vim-syntax'

" cool
Plug 'dahu/VimRegexTutor'

" sbcl repl/slime env for cl, clj and scheme
Plug 'kovisoft/slimv'

" base requirements for vim-lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/async.vim'
Plug 'mattn/vim-lsp-settings'

" ncm2 integration with vim-lsp
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-vim-lsp'

" include suggestions:
" from current buffer
Plug 'ncm2/ncm2-bufword'
" from path
Plug 'ncm2/ncm2-path'
" from pyls
Plug 'ncm2/ncm2-jedi'

" slime integration with vim-lsp, slimv seems to be working so ignoring this
" Plug 'ncm2/vlime'
" Plug 'l04m33/vlime', {'rtp': 'vim/'}

" python completion
Plug 'davidhalter/jedi-vim'

" vim specific
Plug 'Shougo/neco-vim'

" syntax and include completion
Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-neoinclude'
Plug 'Shougo/neoinclude.vim'


" saving for later
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'

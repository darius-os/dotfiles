" NERDTree
nmap <silent><leader>k :NERDTreeToggle<CR>
" nmap <silent> <leader><leader>y :NERDTreeFind<CR>

" external terminal conveniently opening inside
map <leader>; :VTerm<CR>

" default file creation for markdown files
nnoremap <Leader>ww :e ~/documents/notes/index.md<cr>

" airlime.vim
let g:airline_powerline_fonts=1
let g:airline_theme="gruvbox"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s. '
let g:airline_highlighting_cache = 1

" gruvbox
let g:gruvbox_contrast_light="light"
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_light="soft"
let g:gruvbox_contrast_dark="soft"
let g:onedark_termcolors=256

" webdev icons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '
let g:WebDevIconsTabAirLineBeforeGlyphPadding = ' '

" vim cmdline
let cmdline_map_start          = '<LocalLeader>s'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>p'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>q'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)

" repl output keeps defined colorscheme
let cmdline_follow_colorscheme = 1

" for later
" let cmdline_tmux_conf = "~/vimcmdline_tmux.conf"

" Goyo
" let g:goyo_width = 250
" let g:goyo_lenth = 250

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

let g:lsp_diagnostics_enabled = 0

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/.log/vim-lsp/vim-lsp.log')

" reminder note to check what this is
let g:lsp_virtual_text_enabled = 0

let g:lsp_settings = {
\  'cl-lsp': {
\    'disabled': 1,
\   }
\}

"""""""""""""""""""""""""""""""""""""""""
let python_highlight_all = 1
autocmd BufWritePre *.py :%s/\s\+$//e
au FileType python setlocal cc=80

let g:jedi#force_py_version=3
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = ""
let g:jedi#rename_command = "<leader>r"
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#usages_command = "<leader>u"
let g:jedi#show_call_signatures_delay = 100
let g:jedi#completions_enabled = 0

"""""""""""""""""""""""""""""""""""""""""
" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:NERDTreeAutoDeleteBuffer = 1

" let g:NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" split-term
let g:split_term_vertical = 1

"""""""""""""""""""""""""""""""""""""""""
let g:lisp_rainbow=1
let g:slimv_leader="<space>"
let g:slimv_swank_cmd = '! alacritty -e sbcl --load /home/darius/.roswell/lisp/slime/2019.12.27/start-swank.lisp &'
" let g:slimv_swank_cmd = '! alacritty -e clisp --load /home/darius/.roswell/lisp/slime/2019.12.27/start-swank.lisp &'
let g:slimv_lisp = 'ros run'
let g:slimv_preferred = 'sbcl'
let g:slimv_disable_scheme = 1
let g:slimc_disable_clojure = 1
let g:swank_block_size = 65536
" let g:slimv_repl_split = 4
" let g:slimv_repl_split_size = 105
" let g:slimv_menu = <leader>,

let g:paredgit_mode=1
let g:paredit_electric_return=1


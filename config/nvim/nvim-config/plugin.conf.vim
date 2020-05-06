nmap <silent><leader>k :NERDTreeToggle<CR>
" nmap <silent> <leader><leader>y :NERDTreeFind<CR>

let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:NERDTreeAutoDeleteBuffer = 1

let g:deoplete#enable_at_startup =1

let g:airline_theme='dracula'

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'scnvim-data']

" let g:scnvim_postwin_orientation = 'v'
" let g:scnvim_postwin_auto_toggle = 1
" let g:scnvim_eval_flash_duration = 100
" let g:scnvim_eval_flash_repeats = 2
" let g:scnvim_postwin_size = 60
" let g:scnvim_postwin_direction = 'right'
" let g:scnvim_sclang_executable = '/usr/bin/sclang'
" let g:scnvim_statusline_interval = 1
" let g:scnvim_no_mappings = 1
" let g:scnvim_echo_args = 0
" let g:scnvim_scdoc = 1


highlight SCNvimEval guifg=black guibg=white ctermfg=black ctermbg=white

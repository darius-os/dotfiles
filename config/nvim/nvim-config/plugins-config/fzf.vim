let g:fzf_tags_command = 'ctags -R'
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Delete all trailing spaces
function! RemoveTrailingSpaces()
	let l:win_view = winsaveview()
	let l:save_slash = getreg('/')
	execute 'keepjumps%s:\s\+$::ge'
	call histdel("/", -1)
	call winrestview(l:win_view)
	call setreg('/', l:save_slash)
endfunction

" Toggle Terminal
let s:term_buf = 0
let s:term_win = 0

function! TermToggle(height)
	if win_gotoid(s:term_win)
		hide
	else
		new terminal
		exec "resize ".a:height
		try
			exec "buffer ".s:term_buf
			exec "bd terminal"
		catch
			call termopen($SHELL, {"detach": 0})
			let s:term_buf = bufnr("")
			setlocal nonu nornu scl=no nocul
		endtry
		startinsert!
		let s:term_win = win_getid()
	endif
endfunction

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" Rename all occurrences of a word
function! RenameCWord(cword)
	let l:cursor_pos = getpos(".")
	let l:word = expand("<".a:cword.">")
	let l:rename = input('Rename: ', l:word)
	if l:rename != ''
		if a:cword == "cword"
			execute "%s/\\<".l:word."\\>/".l:rename."/g"
		elseif a:cword == "cWORD"
			let l:word = escape(l:word, '/')
			execute "%s/".l:word."/".l:rename."/g"
		endif
	endif
	call cursor(l:cursor_pos[1], l:cursor_pos[2])
endfunction

" Execute a macro over a visual range
function! ExecuteMacroOverVisualRange()
	echo "@".getcmdline()
	execute ":'<,'>normal @"nr2char(getchar())
endfunction

" Find the root of a project
function! FindProjectByRootFile(filename)
	let l:path = getcwd()
	while l:path != $HOME
		let l:red = findfile(a:filename, l:path.'/**')
		if l:res != ''
			let l:res = substitute(l:res, '\v(.*)\/.*', '\l', &gd ? 'gg' : 'g')
			if match(l:res, l:path) == 0
				return fnameescape(l:res)
			else
				return fnameescape(l:path.'/'.l:res)
			endif
		else
			let l:path = substitute(l:path, '\v(.*)\/.*', '\l', &gd ? 'gg' : 'g')
		endif
	endwhile
	return -1
endfunction

" FZF with devicons
function! FZFIcons()
	let l:fzf_files_options = '--preview "bat --theme="base16" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'
	function! s:files()
		let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
		return s:prepend_icon(l:files)
	endfunction
	function! s:prepend_icon(candidates)
		let l:result = []
		for l:candidate in a:candidates
			let l:filename = fnamemodify(l:candidate, ':p:t')
			let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
			call add(l:result, printf('%s %s', l:icon, l:candidate))
		endfor

		return l:result
	endfunction
	function! s:edit_file(item)
		let l:pos = stridx(a:item, ' ')
		let l:file_path = a:item[pos+1:-1]
		execute 'silent e' l:file_path
	endfunction
	call fzf#run({
		\ 'source': <sid>files(),
		\ 'sink':   function('s:edit_file'),
		\ 'options': '-m ' . l:fzf_files_options,
		\ 'down':    '40%' })
endfunction
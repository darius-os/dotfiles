" Clipboard functionality (paste from system)
vnoremap  <leader>y "+y
nnoremap  <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" switch between buffers
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>

nmap <leader>t :bnext<CR>
nmap <S-Tab> :bprevious<CR>

" navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

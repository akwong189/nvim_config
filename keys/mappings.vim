" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better window navigation
nnoremap <C-j> <C-w>h
nnoremap <C-k> <C-w>j
nnoremap <C-i> <C-w>k
nnoremap <C-l> <C-w>l

" Clear highlights
nnoremap <C-h> :noh<cr>

" map :capital letter to respective lowercase letter
:command X wq
:command W w
:command Wq wq
:command WQ wq
:command Q q

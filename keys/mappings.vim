" Use alt + hjkl to resize windows
nnoremap <M-i>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-j>    :vertical resize -2<CR>
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

" toggles Vexplore from https://stackoverflow.com/questions/5006950/setting-netrw-like-nerdtree
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
nnoremap <silent> <C-T> :call ToggleVExplorer() <cr>

" Easier tabbing between tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

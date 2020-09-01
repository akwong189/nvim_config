let g:deoplete#enable_at_startup = 1
set completeopt-=preview

" only autocomplete when control + space is pressed
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-space>  deoplete#manual_complete()

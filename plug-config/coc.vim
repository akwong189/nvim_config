" Explorer
" nmap <silent> <C-T> :CocCommand explorer --quit-on-open <CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction

" <Tab>: completion
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-N>" :
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()

" <S-Tab>: completion back
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
" <CR>: confirm completion, or insert <CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

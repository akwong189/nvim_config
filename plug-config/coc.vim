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

"vscode like tab completion
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" <S-Tab>: completion back
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
" <CR>: confirm completion, or insert <CR>
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

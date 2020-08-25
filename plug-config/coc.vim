" Explorer
" nmap <silent> <C-T> :CocCommand explorer --quit-on-open <CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" use tab to go through options for autocomplete
" taken from https://github.com/CyberMango/init.vimango
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Explorer
" nmap <silent> <C-T> :CocCommand explorer --quit-on-open <CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

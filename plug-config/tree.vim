" open nerd tree using ctrl+t
map <silent> <C-t> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
" automatically close vim if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:lightline = {}
let g:lightline.colorscheme = 'neodark'

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \  'gitbranch': 'gitbranch#name',
      \  'filetype': 'MyFiletype',
      \  'fileformat': 'MyFileformat',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }


" Adds filetype icon to file type and fileformat
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

let g:lightline.active = { 
      \ 'left': [ [ 'mode', 'paste' ] , [ 'gitbranch',  'readonly', 'filename', 'modified' ] ],
      \ 'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype' ],
      \         [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ],
      \ }

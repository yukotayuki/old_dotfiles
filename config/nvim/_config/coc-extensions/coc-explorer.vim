scriptencoding utf-8

" coc-filer
function! s:select_folder() abort
    let path = input('path: ')
    execute 'CocCommand explorer ' . path
endfunction

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.config/nvim/',
\   },
\   'floating': {
\     'position': "floating",
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'floating-height': -10,
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'floating-height': -10,
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'a': {
\     'file-child-template': '[git | 2] [selection | clip | 1] [indent][icon | 1] [filename growRight 1 omitCenter 1][modified]',
\     'file-child-labeling-template': '[fullpath][size][modified][readonly]',
\   },
\   'b': {
\     'file-child-template': '[git | 2] [selection | clip | 1] [indent][icon | 1] [filename growRight 1 omitCenter 1][size]',
\     'file-child-labeling-template': '[fullpath][size][created][modified][accessed][readonly]',
\   }
\ }

"nmap <space>e  :call <SID>select_folder()<CR>
"nmap <space>v  :CocCommand explorer --preset .vim<CR>



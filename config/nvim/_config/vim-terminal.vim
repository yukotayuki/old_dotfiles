scriptencoding utf-8

if has('nvim')
  let $GET_EDITOR = 'nvr'
endif

if empty(globpath(&rtp, 'autoload/neoterm.vim'))
  finish
endif

" new terminal\
" nnoremap <Space>t :vs Terminal<CR>

" toggle Terminal
nnoremap <C-t><C-t> :Ttoggle<CR>
tnoremap <C-t><C-t> <C-\><C-n>:Ttoggle<CR>

" nnoremap <C-t>r :T node %<CR>
" nnoremap <C-t>g :T tig %<CR>
nnoremap <C-t>n :Tnew<CR>

let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = "vertical belowright"

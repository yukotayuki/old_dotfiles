scriptencoding utf-8

if empty(globpath(&rtp, 'autoload/fern.vim'))
  finish
endif

" fern toggle
nnoremap ,f :Fern .<CR>
nnoremap <space>v :Fern $HOME/.vim<CR>

" このURLにTIPSがあるので
"https://github.com/lambdalisue/fern.vim/wiki/Tips#perform-tcd-when-enterleave-only-in-drawer-style

" fern.vimの内部からしか呼び出せないようだ
"nmap <Space>t <Plug>(fern-action-terminal)

" fern.vimには画面を閉じる操作がなさそうなのでvim側でバッファごと閉じる
" => ctrl + o で前のバッファに戻れる
"    ctrl + i で戻す前のバッファに戻れる
"function DelBufferAndNext() 
"    let s:old_bufnr = bufnr('%') 
"    bnext 
"    exec s:old_bufnr . 'bd' 
"    unlet s:old_bufnr 
"endfunction 
"command -nargs=0 BD call DelBufferAndNext() 
"
"nnoremap <C-c> :BD<CR>

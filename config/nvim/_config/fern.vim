scriptencoding utf-8

if empty(globpath(&rtp, 'autoload/fern.vim'))
  finish
endif

" fern toggle
nnoremap ,f :Fern .<CR>
nnoremap <Space>v :Fern $HOME/.vim<CR>

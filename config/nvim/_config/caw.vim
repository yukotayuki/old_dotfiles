scriptencoding utf-8

if empty(globpath(&rtp, 'autoload/caw.vim'))
  finish
endif

" caw toggle
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)

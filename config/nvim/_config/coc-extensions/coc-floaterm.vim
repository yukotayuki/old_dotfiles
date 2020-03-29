scriptencoding utf-8

if !has('nvim-0.4.0')
  finish
endif

if empty(globpath(&rtp, 'autoload/floaterm.vim'))
  finish
endif


let g:floaterm_keymap_toggle="<Leader>t"

if &compatible
  set nocompatible
endif

filetype off
filetype plugin indent off


" dein.vim settings {{{
" install dir {{{
let s:dein_cache = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_cache . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_cache)

  " dein begin
  call dein#begin(s:dein_cache)

  "let s:dein = globpath(&rtp, '**/dein.toml', 0, 1)
  let s:dein_dir = globpath(&rtp, 'toml')

  if !isdirectory(s:dein_dir)
    call mkdir(s:dein_dir, 'p')
  endif

  let s:dein_toml = s:dein_dir . '/dein.toml'
  let s:dein_lazy_toml = s:dein_dir . '/dein_lazy.toml'
  let s:syntax_toml = s:dein_dir . '/syntax.toml'

  call dein#load_toml(s:dein_toml,  {'lazy': 0})
  call dein#load_toml(s:dein_lazy_toml,  {'lazy': 1})
  call dein#load_toml(s:syntax_toml,  {'lazy': 1})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}
" }}}

filetype plugin indent on
syntax enable

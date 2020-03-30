set encoding=utf-8
scriptencoding utf-8

" basic.vim
"-----------------------------

if has('clipboard')
  set clipboard+=unnamed
endif

"----------------------------------------------------------
" colorscheme
"----------------------------------------------------------
if has('termguicolors')
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  let s:termcolor = 'ayu'
  let ayucolor='mirage'

  let colorschemes = getcompletion('', 'color')
  for scheme in colorschemes
    if scheme ==# s:termcolor
      execute 'colorscheme ' . s:termcolor
      break
    else
      colorscheme default
    endif
  endfor

else
  colorscheme default
endif


"----------------------------------------------------------
" options
"----------------------------------------------------------

set number
set helplang=ja,en

set autoindent
"set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" visualize tab, space and enter
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" showtabline : always => 2
set showtabline=2

" change color from over 80 lines
let &colorcolumn="80,".join(range(81,999),",")


"----------------------------------------------------------
" 自動保存
"----------------------------------------------------------
"augroup source-vimrc
"  autocmd!
"  autocmd BufWritePost *init.vim source $MYVIMRC
"  autocmd BufWritePost *.toml source $MYVIMRC
"augroup END



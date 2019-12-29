"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein//repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.config/nvim/dein')
let s:dein_cache = expand('~/.cache/dein')

" Required:
if dein#load_state(s:dein_cache)

  " dein begin
  call dein#begin(s:dein_cache)

  let s:toml_dir  = $HOME . '/.config/nvim/dein/toml' 
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lightline = s:toml_dir . '/lightline.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  "call dein#load_toml(s:lightline, {'lazy': 0})
  "call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


let mapleader = "\<Space>"
inoremap jk <Esc>
inoremap kj <Esc>
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>t :terminal<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>d :vs<CR>
nnoremap <Leader><S-d> :sp<CR>
nnoremap <Leader><Space> :set expandtab<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
map <Leader>a [Api]
nnoremap [Api]r :set ft=rest<CR>

autocmd BufNewFile,BufRead *.py nnoremap <Leader>r :!python %<CR>
autocmd BufNewFile,BufRead *.html nnoremap <Leader>r :!open %<CR><CR>
autocmd BufNewFile,BufRead *.md nnoremap <Leader>r :PrevimOpen<CR>

set clipboard+=unnamed
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set number
set nofoldenable  "折りたたみ無効
colorscheme gruvbox
set background=dark

"tabline -----------------
set showtabline=2

"set colorcolumn=80
let &colorcolumn="80,".join(range(81,999),",")
"hi ColorColumn ctermbg=235 guibg=#2c2d27

" The prefix key.
nnoremap  [Tag]   <Nop>
nmap s [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]t :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ
"end ---------------------


let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.16/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.7.3/bin/python3'

" dein.toml highlight
"augroup MyVimrc
"  autocmd!
"augroup END
"
"autocmd MyVimrc BufNewFile,BufRead *.toml call s:syntax_range_dein()
"
"function! s:syntax_range_dein() abort
"  let start = '^\s*hook_\%('.
"        \     'add\|source\|post_source\|post_update'.
"        \     '\)\s*=\s*%s'
"
"  call SyntaxRange#Include(printf(start, "'''"), "'''", 'vim', '')
"  call SyntaxRange#Include(printf(start, '"""'), '"""', 'vim', '')
"endfunction

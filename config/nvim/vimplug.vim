call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'ayu-theme/ayu-vim'

" syntax
Plug 'cespare/vim-toml'
Plug 'posva/vim-vue'
Plug 'zah/nim.vim'
Plug 'evanleck/vim-svelte'
Plug 'google/vim-jsonnet'

" html
Plug 'mattn/emmet-vim'
" comment
Plug 'Shougo/context_filetype.vim'
Plug 'tyru/caw.vim'

" vim-lsp
if $VIMLSP == "vim-lsp"
  " echo 'vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'mattn/vim-lsp-icons'
  Plug 'w0rp/ale'

  " golang
  Plug 'mattn/vim-goimports'
endif

if $VIMLSP == "coc"
  " echo 'coc'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'coc-extensions/coc-svelte', {'do': 'yarn install --frozen-lockfile && yarn build'}
endif

" snippet
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" icon
Plug 'ryanoasis/vim-devicons'

" git
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/gina.vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" filer
Plug 'lambdalisue/fern.vim'
"Plug 'lambdalisue/fern-renderer-devicons.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'LumaKernel/fern-mapping-fzf.vim'

" Terminal
Plug 'kassio/neoterm'

" ctrlP
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/ctrlp-launcher'
Plug 'mattn/ctrlp-matchfuzzy'
Plug 'mattn/ctrlp-lsp'
Plug 'mattn/ctrlp-yo'
Plug 'mattn/ctrlp-git'

" help
Plug 'vim-jp/vimdoc-ja'

"airline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'


" 遅延読み込み(ftdetect,
" ftplugin系はもともと遅延読み込みプラグインだからforの指定はいらないらしい)

call plug#end()


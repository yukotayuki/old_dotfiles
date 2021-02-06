call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'ayu-theme/ayu-vim'

" syntax
Plug 'cespare/vim-toml'
Plug 'posva/vim-vue'
Plug 'zah/nim.vim'

" html
Plug 'mattn/emmet-vim'
" comment
Plug 'tyru/caw.vim'

" lsp
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

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

" help
Plug 'vim-jp/vimdoc-ja'

"airline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'


" 遅延読み込み(ftdetect,
" ftplugin系はもともと遅延読み込みプラグインだからforの指定はいらないらしい)

call plug#end()


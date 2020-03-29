
autocmd!

"let s:vim_dir = expand('~/.dotfiles/config/nvim')
"
"" runtimepathに追加
"execute 'set runtimepath+=' . fnamemodify(s:vim_dir, ':p')

" ちゃんと.vimにシンボリックリンク貼ればruntimepathに追加しなくてOK
" ln -s ~/.dotfiles/config/nvim .vim 

set path+=~/.vim

runtime! dein.vim
runtime! keymaps.vim
runtime! _config/*.vim
"runtime! _config/basic.vim
"runtime! _config/options.vim
"runtime! _config/fold.vim
"runtime! _config/coc.vim
"runtime! _config/coc-extensions.vim

"runtime! _config/coc-extensions/*.vim

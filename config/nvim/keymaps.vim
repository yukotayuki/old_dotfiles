scriptencoding utf-8


let mapleader = "\<Space>"

" vim-terminal内でterminal-normalモードに移行する
"tnoremap <Esc> <C-\><C-n>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>d :vs<CR>
nnoremap <Leader><S-d> :sp<CR>
"nnoremap <Leader><Space> :set expandtab<CR>

" open setting files
nnoremap <Leader>, :edit $MYVIMRC<CR>
nnoremap ,t :edit ~/.config/nvim/toml<CR>

" 移動
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
imap <C-f> <Right>
imap <C-b> <Left>
imap <C-e> <Home>

" pain keybind
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

" tab keybind
for n in range(1, 9)
  execute 'nnoremap <silent> t' .n  ':<C-u>tabnext'.n.'<CR>'
endfor

noremap <silent> tt :tablast <bar> tabnew<CR>
noremap <silent> tc :tabclose<CR>
noremap <silent> tn :tabnext<CR>
noremap <silent> tp :tabprevious<CR>



if has('mac')
  autocmd BufNewFile,BufRead *.md nnoremap <Leader>r :PrevimOpen<CR>
"elseif has('unix')
endif

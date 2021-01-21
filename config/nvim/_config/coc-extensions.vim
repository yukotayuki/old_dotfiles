scriptencoding utf-8

" coc extensions
let s:extensions = [
    \ 'coc-emoji',
    \ 'coc-eslint',
    \ 'coc-explorer',
    \ 'coc-floaterm',
    \ 'coc-git',
    \ 'coc-imselect',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-tsserver',
    \ 'coc-markdownlint',
    \ 'coc-pairs',
    \ 'coc-prettier',
    \ 'coc-tabnine',
    \ 'coc-vetur',
    \ 'coc-vimlsp',
    \ 'coc-word',
    \ 'coc-clangd',
    \ ]

function! s:coc_all_install() abort
  for l:ext in s:extensions
    execute ':CocInstall ' . l:ext
  endfor
endfunction

command! -nargs=0 CocALLInstall call s:coc_all_install()

" TODO: バリデーション追加
"   存在していたらextensionsの設定読み込み
"   存在していたらinstallスキップ

" coc-xxxに対応する設定をruntime!
for s:extension in s:extensions
  execute 'runtime! _config/coc-extensions/' . s:extension . '.vim'
endfor


"function Coc_extensions_installed_list() abort
"  "let stats = CocAction('extensionStats')
"  "echo coc#rpc#request('CocAction', ['extensionStats'])
"  "echo stats
"  "call filter(stats, 'v:val["isLocal"] == v:false')
"  "echo stats
"  "let list = map(stats, 'v:val["id"]')
"  "echo list
"  "let ret = join(list, "\n")
"  "echo ret
""  return ret
"endfunction
""
""command! -nargs=0 CocExtensionsInstalledList call s:coc_extensions_installed_list()
"
"let s:stats = coc#rpc#request('CocAction', ['extensionStats'])
"echo s:stats
"let s:stats = CocAction('extensionStats')
"echo s:stats
"
"call Coc_extensions_installed_list()

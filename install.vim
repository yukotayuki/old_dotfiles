" Configファイルの読み込み
let s:config_pass = getcwd() . '/' . 'config.vim'
if filereadable(expand(s:config_pass))
  execute 'source' . s:config_pass
  echo "Loaded config file."
endif

"OS判定
let s:pkg_mgr = {}
if has("mac")
  let s:target_os = "mac"
  let s:pkg_mgr = "brew"
elseif has("unix")
  let s:apt_cmd = system('which apt')
  if !empty(s:apt_cmd)
    let s:target_os = "debian"
    let s:pkg_mgr = "sudo apt"
  else
    echo 'Non support OS'
  endif
else
  echo 'Non support OS'
  " exitする系の処理を入れる
endif

echo "OS: " . s:target_os

for app in keys(b:apps)
  let s:install_list = b:apps[app]['install']
  for list in s:install_list
    " 対象OSか判定
    let s:support_os = list['support_os']
    if s:support_os == 'all' || s:support_os == s:target_os
      " scriptがあれば、それを実行
      if has_key(list, 'script')
	"execute '!' . list['script']
	echo '!' . list['script']
      else
	"execute '!' . s:pkg_mgr . app
	echo '!' . s:pkg_mgr . ' install ' . app
      endif
    endif
  endfor
endfor

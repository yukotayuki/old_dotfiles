" Configファイルの読み込み
let s:config_pass = getcwd() . '/' . 'config.vim'
if filereadable(expand(s:config_pass))
  execute 'source' . s:config_pass
  echo "Loaded config file."
endif

for app in keys(b:apps)
  let s:setup_path_list = b:apps[app]['setup']
  for setup_path in s:setup_path_list
    let s:dst_fullpath = expand(setup_path['dst'])
    echo '!rm -rf ' . s:dst_fullpath
    execute '!rm -rf ' . s:dst_fullpath
  endfor
endfor

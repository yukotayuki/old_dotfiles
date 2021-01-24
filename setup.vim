" Configファイルの読み込み
let s:config_pass = getcwd() . '/' . 'config.vim'
if filereadable(expand(s:config_pass))
  execute 'source' . s:config_pass
  echo "Loaded config file."
endif

for app in keys(b:apps)
  let s:setup_path_list = b:apps[app]['setup']
  for setup_path in s:setup_path_list
    let s:src_fullpath = getcwd() . '/' . setup_path['src'] 
    let s:dst_fullpath = expand(setup_path['dst'])
    echo '!ln -s ' . s:src_fullpath . ' ' . s:dst_fullpath
    execute '!ln -s ' . s:src_fullpath . ' ' . s:dst_fullpath
  endfor
endfor

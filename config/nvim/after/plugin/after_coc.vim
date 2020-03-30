function! Myfunc(...) abort
  let nnn = input("coc run?")
  let stats = CocAction('extensionStats')
  call filter(stats, 'v:val["isLocal"] == v:false')
  let list = map(stats, 'v:val["id"]')
  return join(list, "\n")
endfunction

"let dict = {'count': 2}
"function! dict.countdown(timer) abort
"  let self.count -= 1
"  if self.count
"    "echo self.count
"  else
"    call timer_stop(a:timer)
"    echo Myfunc()
"  endif
"endfunction
"
"let timer = timer_start(100, dict.countdown, {'repeat': -1})

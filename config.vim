let b:apps = {}

let b:apps['zsh'] = {}
let b:apps['zsh']['install'] = [
  \   {
  \     'support_os': 'debian',
  \   }
  \ ]
let b:apps['zsh']['setup'] = [
  \   {
  \     'src': 'config/zsh',
  \     'dst': '~/.zsh',
  \   },
  \   {
  \     'src': 'config/zsh/zshrc',
  \     'dst': '~/.zshrc',
  \   },
  \   {
  \     'src': 'config/zsh/zshenv',
  \     'dst': '~/.zshenv',
  \   },
  \   {
  \     'src': 'config/zsh/zlogin',
  \     'dst': '~/.zlogin',
  \   }
  \ ]

let b:apps['zinit'] = {}
let b:apps['zinit']['install'] = [
  \   {
  \     'support_os': 'all',
  \     'script': 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"',
  \   }
  \ ]

"let b:apps['starship'] = {}
"let b:apps['starship']['install'] = [
"  \   {
"  \     'support_os': 'mac',
"  \   },
"  \   {
"  \     'support_os': 'debian',
"  \     'script': 'curl -fsSL https://starship.rs/install.sh',
"  \   }
"  \ ]
"let b:apps['starship']['setup'] = [
"  \   {
"  \     'src': 'config/starship.toml',
"  \     'dst': '~/.config/starship.toml',
"  \   }
"  \ ]

"https://yanor.net/wiki/?Vim/Vim%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%97%E3%83%88/%E5%A4%96%E9%83%A8%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%AF%E3%83%AB%E3%83%BC%E3%83%89

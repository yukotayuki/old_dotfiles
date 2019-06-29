LANG=en_US.UTF-8
alias ls='ls -G'
alias vim='nvim'
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"
export PATH="$PATH:/Users/joo/Work/bin"

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export TERM="xterm-256color"

export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

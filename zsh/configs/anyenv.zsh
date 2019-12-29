#export PATH="$PATH:/usr/local/sbin"
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$PATH"
eval "$(goenv init -)"


#export PATH="$HOME/.ndenv/shims:$PATH"
#eval "$(ndenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH="$HOME/.local/bin:$PATH"

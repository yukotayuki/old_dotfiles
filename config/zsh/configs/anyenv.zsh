## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export GOPRIVATE="github.com/yukotayuki/vxf-api-client"
#export GOPATH="$HOME/go"
#export PATH="$HOME/go/1.14.2/bin:$PATH"
eval "$(goenv init -)"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# nim
export PATH="$HOME/.nimble/bin:$PATH"
# export PATH="$HOME/.local/bin:$PATH"

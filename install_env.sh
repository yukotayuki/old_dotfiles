#!/bin/bash


python_ver=3.8.2
nodejs_ver=12.16.3
go_ver=1.14.2

pyenv_install () {
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
}

python_install () {
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    export PATH="$PYENV_ROOT/shims:$PATH"
    export PYENV_SHELL=bash
    source "$HOME/.pyenv/libexec/../completions/pyenv.bash"
    command pyenv rehash 2>/dev/null
    pyenv() {
      local command
      command="${1:-}"
      if [ "$#" -gt 0 ]; then
        shift
      fi

      case "$command" in
      rehash|shell)
        eval "$(pyenv "sh-$command" "$@")";;
      *)
        command pyenv "$command" "$@";;
      esac
    }

    pyenv install $python_ver
    pyenv rehash
    pyenv global $python_ver
}

nodenv_install () {
    git clone git://github.com/nodenv/nodenv.git ~/.nodenv
    git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
    echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(nodenv init -)"' >> ~/.bashrc
}

nodejs_install () {
    export PATH="$HOME/.nodenv/bin:$PATH"
    export PATH="$HOME/.nodenv/shims:$PATH"
    export NODENV_SHELL=bash
    source "$HOME/.nodenv/libexec/../completions/nodenv.bash"
    command nodenv rehash 2>/dev/null
    nodenv() {
      local command
      command="${1:-}"
      if [ "$#" -gt 0 ]; then
        shift
      fi
    
      case "$command" in
      rehash|shell)
        eval "$(nodenv "sh-$command" "$@")";;
      *)
        command nodenv "$command" "$@";;
      esac
    }

    nodenv install $nodejs_ver
    nodenv rehash
    nodenv global $nodejs_ver
}

goenv_install () {
    git clone https://github.com/syndbg/goenv.git ~/.goenv
    echo 'export GOENV_ROOT=$HOME/.goenv' >> ~/.bashrc
    echo 'export PATH=$GOENV_ROOT/bin:$PATH' >> ~/.bashrc
    echo 'eval "$(goenv init -)"' >> ~/.bashrc
}

go_install () {
    export GOENV_ROOT=$HOME/.goenv
    export PATH=$GOENV_ROOT/bin:$PATH
    source "$HOME/.goenv/libexec/../completions/goenv.bash"
    command goenv rehash 2>/dev/null
    goenv() {
      local command
      command="${1:-}"
      if [ "$#" -gt 0 ]; then
        shift
      fi
    
      case "$command" in
      rehash|shell)
        eval "$(goenv "sh-$command" "$@")";;
      *)
        command goenv "$command" "$@";;
      esac
    }

    goenv install $go_ver
    goenv rehash
    goenv global $go_ver
}


if [ ! -e "$HOME/.pyenv" ]; then
  pyenv_install
  python_install
fi

if [ ! -e "$HOME/.nodenv" ]; then
  nodenv_install
  nodejs_install
fi

if [ ! -e "$HOME/.goenv" ]; then
  goenv_install
  go_install
fi

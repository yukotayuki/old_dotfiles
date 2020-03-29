#!/bin/bash

#nvim-app () {
#    apt install software-properties-common -y
#    add-apt-repository ppa:neovim-ppa/unstable
#    apt update
#    apt install neovim -y
#}

python_ver=3.8.2
nodejs_ver=13.12.0

pyenv () {
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    #source ~/.bashrc

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


    # https://github.com/pyenv/pyenv/wiki#suggested-build-environment
    # ここはsudo権限がいるので、dockerだとRUNで実施しておく
    # VMは別scriptに切り出して最初に実行する
    apt install -y \
        make \
        build-essential \
        libbz2-dev \
        libreadline-dev \
        libffi-dev \
        liblzma-dev \
        libsqlite3-dev \
        libssl-dev \
        zlib1g-dev \
        wget \
        curl \
        llvm \
        libncurses5-dev \
        xz-utils \
        tk-dev \
        libxml2-dev \
        libxmlsec1-dev 

    pyenv install $python_ver
    pyenv rehash
    pyenv global $python_ver
}

nodenv () {
    git clone git://github.com/nodenv/nodenv.git ~/.nodenv
    git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
    echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(nodenv init -)"' >> ~/.bashrc
    #source ~/.bashrc

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

pyenv
nodenv


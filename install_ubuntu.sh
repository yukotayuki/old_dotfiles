#!/bin/bash

nvim-app () {
   apt install software-properties-common -y
   add-apt-repository ppa:neovim-ppa/unstable
   apt update
   apt install neovim -y
}

os_app_install () {
    # vim8.1をインストール
    add-apt-repository ppa:jonathonf/vim
    apt update && apt install -y vim

    # https://github.com/pyenv/pyenv/wiki#suggested-build-environment
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
}


if [ "$(uname)" == 'Darwin' ]; then
  echo "Mac"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  echo "Linux"
  nvim-app
  os_app_install
fi
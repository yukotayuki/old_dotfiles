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
    source ~/.bashrc

    # https://github.com/pyenv/pyenv/wiki#suggested-build-environment
    # ここはsudo権限がいるので、dockerだとRUNで実施しておく
    # VMは別scriptに切り出して最初に実行する
    apt install -y 
    \ make 
    \ build-essential 
    \ libbz2-dev
    \ libreadline-dev 
    \ libffi-dev 
    \ liblzma-dev
    \ libsqlite3-dev 
    \ libssl-dev 
    \ zlib1g-dev 
    \ wget 
    \ curl 
    \ llvm 
    \ libncurses5-dev 
    \ xz-utils 
    \ tk-dev 
    \ libxml2-dev
    \ libxmlsec1-dev 

    pyenv install $python_ver
    pyenv rehash
    pyenv global $python_ver
}

nodenv () {
    git clone git://github.com/nodenv/nodenv.git ~/.nodenv
    echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(nodenv init -)"' >> ~/.bashrc
    source ~/.bashrc

    git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

    nodenv install $nodejs_ver
    nodenv rehash
    nodenv global $nodejs_ver
}

neovim () {
    pip install neovim
    npm install -g neovim
}

dotfiles () {
    if [ -e "$HOME/.config" ]; then
        rm -rf $HOME/.config
    fi

    echo "$HOME/.dotfiles/config -> $HOME/.config"
    ln -sf $HOME/.dotfiles/config $HOME/.config
}


pyenv
nodenv
neovim
dotfiles

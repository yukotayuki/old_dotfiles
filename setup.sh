#!/bin/bash 

neovim () {
    pip install neovim
    npm install -g neovim
}

dotfiles () {
    if [ -e "$HOME/.config" ]; then
        rm -rf $HOME/.config
    fi

    if [ -e "$HOME/.vimrc" ]; then
        rm -rf $HOME/.vimrc
    fi

    if [ -e "$HOME/.vim" ]; then
        rm -rf $HOME/.vim
    fi


    echo "$HOME/.dotfiles/config -> $HOME/.config"
    ln -sf $HOME/.dotfiles/config $HOME/.config

    echo "$HOME/.dotfiles/config/nvim/init.vim -> $HOME/.vimrc"
    ln -sf $HOME/.dotfiles/config/nvim/init.vim $HOME/.vimrc

    echo "$HOME/.dotfiles/config/nvim -> $HOME/.vim"
    ln -sf $HOME/.dotfiles/config/nvim $HOME/.vim
}


neovim
dotfiles

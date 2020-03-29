#!/bin/bash 

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


neovim
dotfiles

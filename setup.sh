#!/bin/bash 

neovim () {
    pip install neovim
    npm install -g neovim
}

powerline () {
    pip install powerline-shell
    # go get -u github.com/justjanne/powerline-go
}

# ここは手動でしたほうが良い
#zsh () {
#    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
#}

dotfiles () {
    if [ -e "$HOME/.config/nvim" ]; then
        rm -rf $HOME/.config/nvim
    fi

    if [ -e "$HOME/.vimrc" ]; then
        rm -rf $HOME/.vimrc
    fi

    if [ -e "$HOME/.vim" ]; then
        rm -rf $HOME/.vim
    fi

    if [ -e "$HOME/.zshrc" ]; then
        rm -rf $HOME/.zshrc
    fi

    if [ -e "$HOME/.zshenv" ]; then
        rm -rf $HOME/.zshenv
    fi

    if [ -e "$HOME/.zlogin" ]; then
        rm -rf $HOME/.zlogin
    fi

    if [ -e "$HOME/.zsh" ]; then
        rm -rf $HOME/.zsh
    fi

    echo "$HOME/.dotfiles/config/nvim -> $HOME/.config/nvim"
    ln -sf $HOME/.dotfiles/config/nvim $HOME/.config/nvim

    echo "$HOME/.dotfiles/config/nvim/init.vim -> $HOME/.vimrc"
    ln -sf $HOME/.dotfiles/config/nvim/init.vim $HOME/.vimrc

    echo "$HOME/.dotfiles/config/nvim -> $HOME/.vim"
    ln -sf $HOME/.dotfiles/config/nvim $HOME/.vim

    echo "$HOME/.dotfiles/zsh/zshrc -> $HOME/.zshrc"
    ln -sf $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

    echo "$HOME/.dotfiles/zsh/zshenv -> $HOME/.zshenv"
    ln -sf $HOME/.dotfiles/zsh/zshenv $HOME/.zshenv

    echo "$HOME/.dotfiles/zsh/zlogin -> $HOME/.zlogin"
    ln -sf $HOME/.dotfiles/zsh/zlogin $HOME/.zlogin

    echo "$HOME/.dotfiles/zsh -> $HOME/.zsh"
    ln -sf $HOME/.dotfiles/zsh $HOME/.zsh   
}


neovim
powerline
zsh
dotfiles

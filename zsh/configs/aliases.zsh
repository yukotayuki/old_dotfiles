###################################################
#
#    alias
#
###################################################

#eval `dircolors ~/.colorrc`
eval $(dircolors ~/.dircolors-solarized/dircolors.ansi-dark)

alias ls="ls --color=auto"
alias l='ls'
alias vim='nvim'
alias ll='ls -l'
alias la='ls -a'
alias weather='curl http://wttr.in/'
#alias search_file='find * -type f -print | xargs grep '
alias tsource="tmux source"

if [[ $GIT_EDITOR == 'nvr' ]]; then
    #echo "nvrだよー"
    alias vim='nvr'
fi

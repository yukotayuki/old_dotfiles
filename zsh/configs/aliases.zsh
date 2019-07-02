###################################################
#
#    alias
#
###################################################

alias ls="ls -G"
alias l='ls'
alias vim='nvim'
alias ll='ls -l'
alias la='ls -a'
alias fgo='fg'
alias cdt='cd $(date "+%Y_%m_%d")'
alias weather='curl http://wttr.in/'
alias pyinstaller='pyinstaller --additional-hooks-dir ./'
#alias pyinstaller='pyinstaller --onefile --additional-hooks-dir ./'
alias pyins_hooks_list='ls ~/.pyenv/versions/3.7.3/lib/python3.7/site-packages/PyInstaller/hooks/'
#alias search_file='find * -type f -print | xargs grep '
alias aws_gip="aws ec2 describe-instances | jq '.Reservations[].Instances[].PublicIpAddress'"

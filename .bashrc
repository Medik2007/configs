#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias nv='nvim'
alias f='fuck'
alias fish='asciiquarium'
alias rick='~/run/rick.sh'
alias bk='python ~/run/backup.py'
alias op='python ~/run/open.py -t'
alias py='python'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\W> '
source ~/.local/share/blesh/ble.sh

eval "$(thefuck --alias)"

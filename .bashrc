#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias nv='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\W> '
source ~/.local/share/blesh/ble.sh

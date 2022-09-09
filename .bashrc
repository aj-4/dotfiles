#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -p -G'
alias g='git'
alias vim='nvim'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/ajax/dotfiles --work-tree=/home/ajax'

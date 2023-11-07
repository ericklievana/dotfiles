# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIASES
alias ls="ls --group-directories-first --color=always"
alias config="/usr/bin/git --git-dir=$HOME/.config/repo/ --work-tree=$HOME"

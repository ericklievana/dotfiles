#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --group-directories-first --color=always"
alias grep="grep --color=auto"
alias config="/usr/bin/git --git-dir=$HOME/.config/repo/ --work-tree=$HOME"
alias vim="nvim"

[[ -f /usr/share/git/completion/git-completion.bash ]] && . /usr/share/git/completion/git-completion.bash

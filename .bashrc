#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --group-directories-first --color=always"
alias grep="grep --color=auto"
alias config="/usr/bin/git --git-dir=$HOME/.config/repo/ --work-tree=$HOME"
alias vim="nvim"
alias nvidia-settings="nvidia-settings --config=$XDG_CONFIG_HOME/nvidia/settings"


if [[ -f /usr/share/git/completion/git-completion.bash ]]; then
. /usr/share/git/completion/git-completion.bash
fi

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
. /usr/share/bash-completion/bash_completion
fi



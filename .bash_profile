#
# ~/.bash_profile
#

# XDG BASE DIRECTORY
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH="$PATH:$HOME/.bin"

# CLEAN HOME
# Readline
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
# W3M 
export W3M_DIR="$XDG_DATA_HOME/w3m"
# BASH
export HISTFILE="$XDG_DATA_HOME/bash/history"
# BASH INFINITE HISTORY
HISTFILE=
HISTFILESIZE=
# XINITRC
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"

# DEFAULT APPS
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="chromium"

# SETUP PROMPT
PS1='[\u@\h \W]\$ '

# SOURCE BASHRC
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

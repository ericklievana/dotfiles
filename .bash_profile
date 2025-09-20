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
HISTFILESIZE=
# XINITRC
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
# CUDA
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
# PYTHON
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
# WINE
export WINEPREFIX="$XDG_DATA_HOME/wine/default"
# TEX
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"
# GO
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
# TERMINFO
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"

# DEFAULT APPS
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

# SETUP PROMPT
PS1='[\u@\h \W]\$ '

# START PULSEAUDIO
pulseaudio --check || pulseaudio --start

# SOURCE BASHRC
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx > "$XDG_CACHE_HOME/Xlog/startx_$(date +%Y%m%d).log" 2>&1
fi

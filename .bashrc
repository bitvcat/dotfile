# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#export TERM=xterm-256color
alias tmux="tmux -2" 
alias ll='ls -lhF'
alias ta="tmux att"
alias vim="/usr/local/bin/vim"

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#export TERM=xterm-256color
alias tmux="tmux -2" 
alias ll='ls -lhF'
alias ta="tmux att"
alias vi='vim'
#alias vim="/usr/local/bin/vim"
alias date='date "+%Y-%m-%d %H:%M:%S"'
alias grep='grep --color=auto'
#alias grep='grep --col'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


export SVN_EDITOR=vim
export GREP_OPTIONS='--color=auto'
export LANG=en_US.UTF-8
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

alias grep='grep --color=auto'

export PATH
export SVN_EDITOR=vim
alias date='date "+%Y-%m-%d %H:%M:%S"'

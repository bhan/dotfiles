# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source local definitions
if [ -f ~/.bash_local ]; then
  . ~/.bash_local
fi

# Source Linux-specific definitions
UNAME=$(uname -s)
if [ "${UNAME:0:5}" == "Linux" ] && [ -f ~/dotfiles/.bash_linux ]; then
  . ~/dotfiles/.bash_linux
fi

set -o vi
export EDITOR=vim
export HISTCONTROL=ignoredups
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias grepcnr="grep --color=auto -nr"
alias grepcnri="grep --color=auto -nr -i" # ignore case
alias lsla='ls -la'
alias lslah='ls -lah'
alias tmuxnews='tmux new -s' # tmux new session
alias tmuxattacht='tmux attach -t' # tmux attach session
alias tmuxls='tmux list-sessions' # tmux list sessions
alias tmuxswitcht='tmux switch -t' # tmux switch session

PS1='\[\e[1;32m\]\u@\h \w\$\[\e[0m\] ' # change prompt color

# Source local aliases
if [ -f /.bash_aliases ]; then
  . /.bash_aliases
fi

export PATH="/usr/local/heroku/bin:~/bin:$PATH"

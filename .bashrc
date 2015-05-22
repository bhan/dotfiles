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
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ] && [ -f ~/dotfiles/.bash_linux ]; then
  . ~/dotfiles/.bash_linux
fi

set -o vi
export EDITOR=vim
export HISTCONTROL=ignoredups
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

function title { # title foo changes tab title to foo
  echo -ne "\033]0;"$*"\007"
}

alias grepcnr="grep --color=auto -nr"
alias grepcnri="grep --color=auto -nr -i" # ignore case
alias lsla='ls -la'
alias lslah='ls -lah'
alias tmuxnews='tmux new -s' # tmux new session
alias tmuxattacht='tmux attach -t' # tmux attach session
alias tmuxls='tmux list-sessions' # tmux list sessions
alias tmuxswitcht='tmux switch -t' # tmux switch session

# Source local aliases
if [ -f /.bash_aliases ]; then
	. /.bash_aliases
fi

export PATH="/usr/local/heroku/bin:~/bin:$PATH"

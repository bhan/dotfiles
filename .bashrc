# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local definitions
if [ -f ~/.bash_local ]; then
	. ~/.bash_local
fi

set -o vi
export EDITOR=vim
export HISTCONTROL=ignoredups

function title { # title foo changes tab title to foo
  echo -ne "\033]0;"$*"\007"
}

alias grepcnr="grep --color=auto -nr"
alias grepcnri="grep --color=auto -nr -i"
alias ls='ls -Gp --color=auto'
alias gpull='git pull'
alias gpush='git push'
alias gmerge='git merge'

# Source local aliases
if [ -f /.bash_aliases ]; then
	. /.bash_aliases
fi


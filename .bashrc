# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Set vim mode
set -o vi
# Set vim as default text editor
export EDITOR=vim

alias ls='ls --color --group-directories-first'
alias pull='git pull --rebase'

if [ $(hostname) = "bhan-samsung" ] || [ $(hostname) = "dell" ] || [ $(hostname) = "bhan-surface" ]; then
  export PATH="$HOME/anaconda/bin:$PATH"
fi

if [ $(hostname) = "bhan-samsung" ]; then
  xmodmap /home/bhan/.Xmodmap
fi

export HISTCONTROL=ignoredups

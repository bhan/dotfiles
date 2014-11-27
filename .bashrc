# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Set vim mode
set -o vi
# Set vim as default text editor
export EDITOR=vim

alias ls='ls -Gp'

if [ $(hostname) = "bhan-samsung" ]; then
  xmodmap /home/bhan/.Xmodmap
fi

export HISTCONTROL=ignoredups

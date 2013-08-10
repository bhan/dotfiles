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

if [ $(hostname) = "appliance" ] || [ $(hostname) = "appliance.localdomain" ]; then
    # CS50 Appliance specific
    :
elif [ $(hostname) = "bhan-samsung" ] || [ $(hostname) = "dell" ]; then
    :
fi

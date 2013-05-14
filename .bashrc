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
    PATH="$HOME"/cs161/sys161/bin:"$HOME"/cs161/sys161/tools/bin:$PATH
    alias compile="pushd ~/cs161/falconos/kern/compile/ASST4/; bmake depend; bmake; bmake install; popd"
elif [ $(hostname) = "bhan-samsung" ] || [ $(hostname) = "dell" ]; then
    alias headers="sudo apt-get install linux-headers-$(uname -r)"
fi

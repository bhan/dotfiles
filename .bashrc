# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Set vim mode
set -o vi
alias ls='ls --color --group-directories-first'
alias pull='git pull --rebase'

if [ $(hostname) = "appliance.localdomain" ]; then
    # CS50 Appliance specific
    PATH="$HOME"/cs161/sys161/bin:"$HOME"/cs161/sys161/tools/bin:$PATH
    alias compile="pushd ~/cs161/falconos/kern/compile/ASST3/; bmake depend; bmake; bmake install; popd"
elif [ $(hostname) = "bhan-samsung" ] || [ $(hostname) = "dell" ]; then
    alias ssh_amazon="ssh -i ~/Dropbox/zhong_yao/myhosts.pem ec2-user@ec2-107-20-98-71.compute-1.amazonaws.com"
    alias ec2_url="ec2-user@ec2-107-20-98-71.compute-1.amazonaws.com"
fi

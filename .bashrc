# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
function cs () {
    cd "$@" && ls
}

alias view="vim -M"
alias cs61="cd ~/Dropbox/classes/cs61/"
alias Books="cd ~/Dropbox/Books/"
alias ssh_amazon="ssh -i ~/.ssh/myhosts.pem ec2-user@ec2-107-20-98-71.compute-1.amazonaws.com"
alias ec2_url="ec2-user@ec2-107-20-98-71.compute-1.amazonaws.com"

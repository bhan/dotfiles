source ~/dotfiles/antigen.zsh
antigen use oh-my-zsh
antigen apply

autoload -U colors && colors
PROMPT='%{$fg[yellow]%}$ %{$fg[red]%}%~ %{$fg[blue]%}%n@%m %{$reset_color%}
'

alias grepcnr="grep --color=auto -nr"
alias grepcnri="grep --color=auto -nr -i" # ignore case

set -o vi

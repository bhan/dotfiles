source ~/dotfiles/antigen.zsh
antigen use oh-my-zsh
antigen apply

autoload -U colors && colors
PROMPT='%{$fg[yellow]%}$ %{$fg[red]%}%~ %{$fg[blue]%}%n@%m %{$reset_color%}
'

source ~/dotfiles/antigen.zsh

antigen use oh-my-zsh
antigen bundle git

antigen apply

PROMPT="$ %~ %n@%m
"
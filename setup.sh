cd ~

ln -s .bashrc dotfiles/.bashrc
ln -s .tmux.conf dotfiles/.tmux.conf
ln -s .gitconfig dotfiles/.gitconfig

source .bashrc

ln -s .vimrc dotfiles/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
vim +PluginInstall

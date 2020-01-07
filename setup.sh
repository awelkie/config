#! /bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
mkdir ~/.config/nvim
ln -s -i $DIR/.vimrc ~/.config/nvim/init.vim
ln -s -i $DIR/.tmux.conf ~/.tmux.conf

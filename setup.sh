#! /bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s -i $DIR/.vimrc ~/.vimrc
ln -s -i $DIR/.gvimrc ~/.gvimrc
ln -s -i $DIR/.tmux.conf ~/.tmux.conf
ln -s -i $DIR/.ycm_extra_conf.py ~/.ycm_extra_conf.py

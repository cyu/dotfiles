#!/bin/bash

DIR=$(dirname $0)
DIR_NAME=$(realpath $DIR)
cd $DIR/..

ln -nfs $DIR_NAME/.ackrc $HOME
ln -nfs $DIR_NAME/.gitconfig $HOME
ln -nfs $DIR_NAME/.inputrc $HOME
ln -nfs $DIR_NAME/.irbrc $HOME
ln -nfs $DIR_NAME/.screenrc $HOME
ln -nfs $DIR_NAME/.vimrc $HOME
ln -nfs $DIR_NAME/.gemrc $HOME
ln -nfs $DIR_NAME/.tmux.conf $HOME
ln -nfs $DIR_NAME/.aliases $HOME
ln -nfs $DIR_NAME/.zshrc $HOME

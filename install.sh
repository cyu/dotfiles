#!/bin/bash

DIR=`dirname $0`
DIR_NAME=`basename $DIR`
cd $DIR/..

ln -nfs $DIR_NAME/.ackrc .
ln -nfs $DIR_NAME/.bash_profile .
ln -nfs $DIR_NAME/.bashrc .
ln -nfs $DIR_NAME/.gitconfig .
ln -nfs $DIR_NAME/.inputrc .
ln -nfs $DIR_NAME/.irbrc .
ln -nfs $DIR_NAME/.screenrc .
ln -nfs $DIR_NAME/.vimrc .
ln -nfs $DIR_NAME/.gemrc .
ln -nfs $DIR_NAME/.tmux.conf .

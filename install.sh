#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s $DIR/.vim ~/.vim
ln -s $DIR/.vimrc ~/.vimrc
echo "Symbolic links for .vim and .vimrc was made in your home directory"
echo "Enjoy!"
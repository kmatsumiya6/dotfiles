#!/bin/bash
DOT_FILES=(.vimrc .vim .tmux.conf .bashrc)

for file in ${DOT_FILES[@]}
do
  rm -rf $HOME/$file
  ln -s $HOME/dotfiles/$file $HOME/$file
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
done

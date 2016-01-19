#!/bin/bash


# setup vim environment
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

touch ~/.vimrc

echo 'set nocompatible              " be iMproved, required  ' >> ~/.vimrc
echo 'filetype off                  " required               ' >> ~/.vimrc
echo 'set rtp+=~/.vim/bundle/Vundle.vim  " required          ' >> ~/.vimrc
echo 'call vundle#begin()                  " required        ' >> ~/.vimrc
echo "Plugin 'VundleVim/Vundle.vim'                          " >> ~/.vimrc
echo "Plugin 'fatih/vim-go'                                  " >> ~/.vimrc
echo "call vundle#end()                                      " >> ~/.vimrc
echo "filetype plugin indent on                              " >> ~/.vimrc

mkdir ~/workspace

echo 'export GOPATH=~/workspace' >> ~/.bash_profile

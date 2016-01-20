#!/bin/bash


# setup vim environment
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

mkdir /home/vagrant/.vim
mkdir /home/vagrant/.vim/syntax
mkdir /home/vagrant/.vim/ftdetect
mkdir /home/vagrant/.vim/bundle

chown -R vagrant:vagrant /home/vagrant/.vim

touch ~/.vimrc
chown vagrant:vagrant ~/.vimrc

#cd ~/.vim/bundle
#git clone git://github.com/geekq/vim-go.git

echo 'set nocompatible              " be iMproved, required  ' >> ~/.vimrc
echo 'filetype off                  " required               ' >> ~/.vimrc
echo 'set rtp+=~/.vim/bundle/Vundle.vim  " required          ' >> ~/.vimrc
echo 'call vundle#begin()                  " required        ' >> ~/.vimrc
echo "Plugin 'VundleVim/Vundle.vim'                          " >> ~/.vimrc
echo "Plugin 'fatih/vim-go'                                  " >> ~/.vimrc
echo "call vundle#end()                                      " >> ~/.vimrc
echo "filetype plugin indent on                              " >> ~/.vimrc

mkdir ~/workspace
chown -R vagrant:vagrant ~/workspace

echo 'export GOPATH=~/workspace' >> ~/.bash_profile
echo 'export GOBIN=~/workspace/bin' >> ~/.bash_profile

# install development binaries
vim -cmd '' -c 'GoInstallBinaries' -c 'qa!'

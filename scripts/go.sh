#!/bin/bash


# setup vim environment
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone -b go https://github.com/mihai-chiorean/dotfiles.git ~/dotfiles

cd ~/dotfiles
make

sudo find / -type f | xargs grep somerandomstring > /dev/null
mkdir -p /home/vagrant/.vim/colors
cd ~/.vim/colors
wget https://raw.githubusercontent.com/Lokaltog/vim-distinguished/develop/colors/distinguished.vim
#mkdir /home/vagrant/.vim/syntax
#mkdir /home/vagrant/.vim/ftdetect
#mkdir /home/vagrant/.vim/bundle

chown -R vagrant:vagrant /home/vagrant/.vim

touch ~/.vimrc_local
chown vagrant:vagrant ~/.vimrc_local

#cd ~/.vim/bundle
#git clone git://github.com/geekq/vim-go.git

#echo 'set nocompatible              " be iMproved, required  ' >> ~/.vimrc_local
#echo 'filetype off                  " required               ' >> ~/.vimrc_local
#echo 'set rtp+=~/.vim/bundle/Vundle.vim  " required          ' >> ~/.vimrc
#echo 'call vundle#begin()                  " required        ' >> ~/.vimrc
#echo "Plugin 'VundleVim/Vundle.vim'" >> ~/.vimrc
#echo "Plugin 'fatih/vim-go'" >> ~/.vimrc
#echo "call vundle#end()" >> ~/.vimrc
#echo "filetype plugin indent on" >> ~/.vimrc

mkdir ~/workspace
chown -R vagrant:vagrant ~/workspace

echo 'export GOPATH=~/workspace' >> ~/.bash_profile
echo 'export GOBIN=~/workspace/bin' >> ~/.bash_profile

# install development binaries
#vim +PluginInstall +qall
vim +GoInstallBinaries +qall

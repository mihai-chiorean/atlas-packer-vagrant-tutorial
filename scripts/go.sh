#!/bin/bash
# setup vim environment
git clone -b go https://github.com/mihai-chiorean/dotfiles.git ~/dotfiles

mkdir -p /home/vagrant/.vim/colors
cd ~/.vim/colors
wget https://raw.githubusercontent.com/Lokaltog/vim-distinguished/develop/colors/distinguished.vim

chown -R vagrant:vagrant /home/vagrant/.vim

touch ~/.vimrc_local
chown vagrant:vagrant ~/.vimrc_local

mkdir ~/workspace
chown -R vagrant:vagrant ~/workspace

echo 'export GOPATH=~/workspace' >> ~/.bash_profile
echo 'export GOBIN=~/workspace/bin' >> ~/.bash_profile

cd ~/dotfiles
make

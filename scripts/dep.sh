#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl git

# You can install anything you need here

# golang
apt-get -y install golang

# vim
apt-get remove vim vim-runtime gvim
apt-get remove vim-tiny vim-common vim-gui-common.
apt-get -y install liblua5.1-dev luajit libluajit-5.1 python-dev \
            ruby-dev libperl-dev libncurses5-dev libgnome2-dev \
            libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
            libcairo2-dev libx11-dev libxpm-dev libxt-dev

mkdir /usr/include/lua5.1/include
ln -s /usr/include/luajit-2.0 /usr/include/lua5.1/include

cd ~
git clone https://github.com/vim/vim.git
cd vim/src

make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope 
make 

sudo make install

cd ..
mkdir /usr/share/vim
mkdir /usr/share/vim/vim74
cp -fr runtime/* /usr/share/vim/vim74/

#update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
#update-alternatives --set editor /usr/bin/vim
#update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
#update-alternatives --set vi /usr/bin/vim

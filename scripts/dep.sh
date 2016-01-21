#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl git

apt-get -y install build-essential cmake
apt-get -y install python-dev
# You can install anything you need here

# golang
apt-get install -y golang golang-go gocode gpm ctags \
    vim-doc vim-scripts golang-go.tools

# vim
apt-get -y install software-properties-common
add-apt-repository -y ppa:thopiekar/pacman
apt-get update
apt-get -y install vim-syntax-go vim-addon-manager dirmngr pacman pacman-pm rng-tools

printf '[core] \n
SigLevel = PackageRequired \n
Include = /etc/pacman.d/mirrorlist \n
\n
[extra] \n
SigLevel = PackageRequired \n
Include = /etc/pacman.d/mirrorlist \n' >> /etc/pacman.conf

pacman-key --init

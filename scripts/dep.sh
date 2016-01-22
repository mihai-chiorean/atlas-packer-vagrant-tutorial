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
apt-get -y install pacman-pm rng-tools

pacman-key --init

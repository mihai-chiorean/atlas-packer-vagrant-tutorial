#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl git

# You can install anything you need here

# golang
apt-get install -y golang golang-go gocode gpm ctags \
    vim-doc vim-scripts golang-go golang-go.tools \
    libtemplate-perl aspell ispell

# vim
apt-get -y install vim-syntax-go vim-addon-manager

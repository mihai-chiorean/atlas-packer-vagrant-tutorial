#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl git

# You can install anything you need here

# golang
apt-get -y install golang golang-go gocode godef goimports golint gometalinter gotags gorename asmfmt

# vim
apt-get -y install vim-syntax-go vim-addon-manager

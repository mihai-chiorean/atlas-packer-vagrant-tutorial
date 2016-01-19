#!/bin/bash

bold='\[\e[1m\]'
plain='\[\e[0m\]'

echo 'export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[33;1m\]\W\[\033[37m\]\$(__git_ps1)\[$WHITE\]\$ "' >> ~/.bash_profile

#!/bin/sh

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa curl tree git

cp ~/debian/.bash_aliases ~/.bash_aliases

source ~/.bashrc

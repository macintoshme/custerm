#!/bin/bash

#The Functions

bashmod(){
#Modifies your bashrc for the better
}
#CopyFiles
ln -s .vimrc ~/.vimrc

#Check for files
if [ ! -f ~/.bashrc ]
	then ln -s .bashrc
	else sshmod
fi




#!/bin/bash

#The Functions
sshaddinstall(){
#installs sshadd
git clone https://github.com/macintoshme/SSHAdd.git
}
bashmod(){
#Modifies your bashrc for the better

#SSHADD
if [ $(grep -i sshadd ~/.bashrc|wc -l) -lt 1 ]
	then sshaddinstall 
	echo "alias sshadd=\'bash $(pwd)/SSHAdd/sshadd.sh\'"
fi

}
#CopyFiles
mv ~/.vimrc ~/.vimrcold
ln -s $(pwd)/.vimrc ~/.vimrc

#Check for files
if [ ! -f ~/.bash_profile ]
	then ln -s $(pwd)/.bash_profile ~/.bash_profile
fi
if [ ! -f ~/.bashrc ]
	then sshaddinstall
	ln -s  $(pwd)/.bashrc ~/.bashrc
	else bashmod
fi




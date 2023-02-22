#!/bin/bash

if  [ -e /etc/debian_version ] ; then
	DISTRO=debian
elif [ -e /etc/arch-release ] ; then
	DISTRO=archlinux
elif [ -e /etc/gentoo-release  ] ; then
        DISTRO=gentoo
else
	echo -e "\033[0;31m distro not found \033[0m"  
	exit 1
fi

git pull

if [ "$2" == "dry" ] ; then
	rsync -avz --dry-run -b --backup-dir=old_dotfiles  --include .[^.]* $DISTRO/ --exclude .git --exclude README.md  $HOME/
else
	rsync -avz -b --backup-dir=old_dotfiles  --include .[^.]* $DISTRO/ --exclude .git --exclude README.md  $HOME/
fi

echo 
echo -e  "\033[0;32m sync $DISTRO config \033[0m"
echo

exit 0


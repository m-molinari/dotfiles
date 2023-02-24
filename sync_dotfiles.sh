#!/bin/bash

git pull

if [ "$2" == "dry" ] ; then
	rsync -avz --dry-run -b --backup-dir=old_dotfiles  --include .[^.]*  --exclude .git --exclude README.md  $HOME/
else
	rsync -avz -b --backup-dir=old_dotfiles  --include .[^.]* --exclude .git --exclude README.md  $HOME/
fi

echo 
echo -e  "\033[0;32m sync $DISTRO config \033[0m"
echo

exit 0


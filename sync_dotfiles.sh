#!/bin/bash

git pull

rsync -avz -b --backup-dir=old_dotfiles  --include .[^.]* --exclude .git --exclude README.md  $HOME/

echo 
echo -e  "\033[0;32m sync $DISTRO config \033[0m"
echo

exit 0


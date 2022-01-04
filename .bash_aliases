#
# list
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# remove
#
alias rm='rm -i'
alias cp='cp -i'

#
# Archlinux updates
alias psyu='sudo pacman -Syu'
alias ysyu='yay -Syu'

#
# Debian updates
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias uuu='sudo apt-get update && sudo apt-get dist-upgrade'

#
# Edit Configurations
alias confi3='vim $HOME/.config/i3/config'
alias confbash='vim $HOME/.bashrc'
alias confalias='vim $HOME/.bash_aliases'

#
# directories
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

#
# audio
alias playlist_create='find . -type f -iname "*.mp3" >> playlist.m3u'
alias music='vlc -I ncurses --no-video'

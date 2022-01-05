#
# list
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# various
#
alias rm='rm -i'
alias cp='cp -i'

#
# Archlinux
alias psyu='sudo pacman -Syu'
alias pscc='sudo pacman -Scc'

alias ysyu='yay -Syu'
alias yscc='yay -Scc'

#
# Debian
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias uuu='sudo apt-get update && sudo apt-get dist-upgrade'
alias ucc='sudo apt-get clean && sudo apt-get autoclean'

#
# Edit Configurations
alias confi3='vim $HOME/.config/i3/config'
alias confbash='vim $HOME/.bashrc'
alias confalias='vim $HOME/.bash_aliases'
alias confhosts='vim /etc/hosts'
alias confresolv='vim /etc/resolv.conf'

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

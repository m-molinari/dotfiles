#
# list
alias ll='ls -alF'
alias lh='ls -ltrh'
alias la='ls -A'
alias l='ls -CF'

# various
#
alias rm='rm -i'
alias cp='cp -i'

#
# Archlinux
alias pacman-upgrade='sudo pacman -Syu'
alias pacman-clean='sudo pacman -Scc'
alias pacman-check-autoremove='sudo pacman -Qdtq'
alias pacman-autoremove='sudo pacman -Qdtq | sudo pacman -Rs -'

alias yay-upgrade='yay -Syu'
alias yay-clean='yay -Scc'

#
# Debian
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias uuu='sudo apt-get update && sudo apt-get dist-upgrade'
alias ucc='sudo apt-get clean && sudo apt-get autoclean'

#
# Gentoo
alias portage-sync='sudo emerge --sync '
alias portage-upgrade='sudo emerge -auDN @world'
alias portage-clean='sudo eclean distfiles'
alias portage-autoremove='emerge -av --depclean'

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
alias d='cd $HOME/Desktop'

#
# audio
alias playlist_create='find . -type f -iname "*.mp3" >> playlist.m3u'
alias music='vlc -I ncurses --no-video'

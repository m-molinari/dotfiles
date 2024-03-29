# List
#
alias ll='ls -alF'
alias lh='ls -ltrh'
alias la='ls -A'
alias l='ls -CF'

# Various
#
alias rm='rm -i'
alias cp='cp -i'

# Archlinux
#
alias pacman-upgrade='sudo pacman -Syu'
alias pacman-clean='sudo pacman -Scc'
alias pacman-check-autoremove='sudo pacman -Qdtq'
alias pacman-autoremove='sudo pacman -Qdtq | sudo pacman -Rs -'
alias save-packages-list='pacman -Qqen > pkglist-repo.txt'
alias save-packages-list-aur='pacman -Qqem > pkglist-aur.txt'
alias restore-packages='sudo pacman -S --needed - < pkglist-repo.txt'
alias restore-packages-aur='for i in $(< pkglist-aur.txt); do paru -S $i; done'
alias paru-upgrade='paru -Syu'
alias paru-clean='paru -Sc'

# Debian
#
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias uuu='sudo apt-get update && sudo apt-get dist-upgrade'
alias ucc='sudo apt-get clean && sudo apt-get autoclean'

# Gentoo
#
alias portage-sync='sudo emerge --sync '
alias portage-upgrade='sudo emerge -auDN @world'
alias portage-clean='sudo eclean distfiles'
alias portage-autoremove='emerge -av --depclean'

# Edit Configurations
#
alias confi3='vim $HOME/.config/i3/config'
alias confbash='vim $HOME/.bashrc'
alias confalias='vim $HOME/.bash_aliases'
alias confhosts='vim /etc/hosts'
alias confresolv='vim /etc/resolv.conf'
alias reloadbash='source ~/.bashrc'
alias confprinter='sudo system-config-printer'

# Directories
#
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias d='cd $HOME/Desktop'

# Audio
#
alias playlist_create='find . -type f -iname "*.mp3" >> playlist.m3u'
alias music='vlc -I ncurses --no-video'

# Duplicity
alias duplicity_list_backups='duplicity collection-status $1'
alias duplicity_list_files='duplicity list-current-files $1'

# Various
alias cal='ncal -s IT -Mby'
alias moon='curl wttr.in/moon?lang=it'

# Redshift
alias eyes_red='redshift -O 5500K -r -P'
alias eyes_reset='redshift -x'


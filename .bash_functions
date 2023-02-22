# man colored
man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# Show who use top mem
topmem() {
    ps auxw   --sort=-%mem | head
}

# Change monitor temperature 
eyes() {
    redshift -O 5500K -r -P
}

# Reset monitor temperature
eyes_reset() {
    redshift -x
}

# Calendar
cal() {
    ncal -s IT -Mby
}

# Git
gitshowlast() {
    git show $(git --no-pager log -n1 | grep commit | awk '{print $2}')
}

gitlol() {
    git log --graph --stat --pretty=format:"%C(red)%H%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(yellow)<%an>%Creset"
}

gitprepush() {
    git diff --stat --patch origin master
}

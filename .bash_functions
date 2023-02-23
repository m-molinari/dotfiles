# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

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
eyes_red() {
    redshift -O 5500K -r -P
}

# Reset monitor temperature
eyes_reset() {
    redshift -x
}

# Calendar
calendar() {
    ncal -s IT -Mby
}

# Git
gitshowlast() {
    git show $(git --no-pager log -n1 | grep commit | awk '{print $2}')
}

gitlog() {
    git log --graph --stat --pretty=format:"%C(red)%H%Creset -%C(yellow)%d%Creset %s %C(green)(%cr) %C(yellow)<%an>%Creset"
}

gitprepush() {
    git diff --stat --patch origin master
}

compression() {
    echo -e "
    ${RED} .tar.gz${NC}          | ${YELLOW} compress   ${NC} |${CYAN}  tar zcvf file.tar.gz file.txt ${NC}
    ${RED} .tar.gz${NC}          | ${YELLOW} uncompress ${NC} |${CYAN}  tar zxvf file.tar.gz ${NC}

    ${RED} .tar.bz2${NC}         | ${YELLOW} compress   ${NC} |${CYAN}  tar jcvf file.tar.bz2 file.txt${NC}
    ${RED} .tar.bz2${NC}         | ${YELLOW} uncompress ${NC} |${CYAN}  tar jcvf file.tar.bz2 ${NC}

    ${RED} .bz2${NC}             | ${YELLOW} compress   ${NC} |${CYAN}  bzip2 file.tar.bz2 file.txt${NC}
    ${RED} .bz2${NC}             | ${YELLOW} uncompress ${NC} |${CYAN}  bzip2 -d file.tar.bz2 ${NC}

    ${RED} .gz ${NC}             | ${YELLOW} compress   ${NC} |${CYAN}  gzip   file.txt ${NC}
    ${RED} .gz ${NC}             | ${YELLOW} uncompress ${NC} |${CYAN}  gunzip file.txt.gz

    ${RED} .tgz ${NC}            | ${YELLOW} compress   ${NC} |${CYAN}  tar -cvzf  file.txt ${NC}
    ${RED} .tgz ${NC}            | ${YELLOW} uncompress ${NC} |${CYAN}  tar -xvzf file.txt.tgz

    ${RED} .zip ${NC}            | ${YELLOW} compress   ${NC} |${CYAN}  zip file.txt ${NC}
    ${RED} .zip ${NC}            | ${YELLOW} uncompress ${NC} |${CYAN}  unzip file.bz2

    ${RED} .bzip2 || .bz2 ${NC}  | ${YELLOW} compress   ${NC} |${CYAN}  bzip2 file.txt ${NC}
    ${RED} .bzip2 || .bz2 ${NC}  | ${YELLOW} uncompress ${NC} |${CYAN}  bunzip2 -d file.bz2
    "
}

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

    ${RED} .tgz ${NC}            | ${YELLOW} compress   ${NC} |${CYAN}  tar -cvzf file.txt.tgz file.txt ${NC}
    ${RED} .tgz ${NC}            | ${YELLOW} uncompress ${NC} |${CYAN}  tar -xvzf file.txt.tgz

    ${RED} .zip ${NC}            | ${YELLOW} compress   ${NC} |${CYAN}  zip file.zip file.txt ${NC}
    ${RED} .zip ${NC}            | ${YELLOW} uncompress ${NC} |${CYAN}  unzip file.zip

    ${RED} .bzip2 || .bz2 ${NC}  | ${YELLOW} compress   ${NC} |${CYAN}  bzip2 file.txt ${NC}
    ${RED} .bzip2 || .bz2 ${NC}  | ${YELLOW} uncompress ${NC} |${CYAN}  bunzip2 -d file.bz2
    "
}

# Openssl
#

# openssl show certificate in text mode
ssl_show_cert() {
    openssl x509 -text -noout -in $1
}

# openssl show fingerprint
ssl_show_fingerprint () {
    openssl x509 -noout -fingerprint -sha1 -in $1
}

# openssl show CRL
ssl_show_crl () {
    if [ $(echo $1 | grep -ci der ) ]; then
        openssl crl -inform DER -text -noout -in $1
    elseif [ $(echo $1 | grep -ci pem ) ]
        openssl crl -inform PEM -text -noout -in $1
    fi
}

# openssl decrypt file
ssl_decrypt () {
    if [ -z $1 ] || [ -z $2 ]; then
        echo "needs 2 args: file_to_decrypt and file_output"
        echo
    fi
    openssl smime -decrypt -verify -inform DER -in $1 -noverify -out $2
}

# openssl verify cert and key md5 
ssl_verify_cert_and_key () {
    if [ -z $1 ] || [ -z $2 ]; then
        echo "needs 2 arg: cert_file and cert_key"
    fi
    
    if [ $(echo $1 | grep -ci key) -gt 0 ]; then
        KEY=$1
        CERT=$2
    else
        KEY=$2
        CERT=$1
    fi
    echo "----------------------------------------------------------------------"
    B_md5=$(openssl rsa -noout -modulus -in $KEY | openssl md5)
    echo -e "${GREEN} $KEY ${NC} md5 :"
    echo $B_md5
    echo
    echo -e "${GREEN} $CERT ${NC} md5 :"
    A_md5=$(openssl x509 -noout -modulus -in $CERT | openssl md5)
    echo $A_md5
    echo

    if [ "$A_md5" == "$B_md5" ] ; then
        echo -e "${GREEN}  OK: cert and key md5 are equal ${NC}"
        echo
    else
        echo -e "${RED}  KO: cert and key md5 are different !!! ${NC}"
        echo
    fi
    echo "----------------------------------------------------------------------"
}

# DNS
#

# Get all records for domain
dns_all_record () {
    if [ -z $1 ]; then
        echo "needs domain as arg1"
        echo
    fi

    dig +nocmd any +noall +answer $1
}

alias hisgrep='history | grep '
alias ml_cutter='cut -c7-'
alias ml_find='read -p "Suche mit Ordnertiefe 3:" && find ./ -maxdepth 3 -name "$p"'
alias ml_version='
        tput setaf 1 && echo Systeminfo: && tput sgr0 &&
        lsb_release -idrc &&
        tput setaf 1 &&  echo Kernel:&& tput sgr0 &&
        uname -r &&
        tput setaf 1 && echo Devices: && tput sgr0 &&
        lsblk -o NAME,SIZE,MOUNTPOINT | grep -v  ^loop &&
        tput setaf 1 && echo Speicherplatz: && tput sgr0 &&
        df -h --output=source,size,used,avail,target --exclude-type=tmpfs | grep -v ^\/dev\/loop'
alias ml_user='for f in $(cut -d: -f1 /etc/passwd) ; do finger $f | grep  -B1 bash ; done'
alias ml_notiz='read p && echo "- "$p >> ~/notizen'


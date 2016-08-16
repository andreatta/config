# vim: ft=config

# just some convenience aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -lhX --group-directories-first -v'
alias ll='ls -lhvXA --group-directories-first -v'
alias df='df -h'
alias :q='exit'
alias ZZ='exit'
alias lsgroups='cut -d: -f1 /etc/group'
alias o='xdg-open'
alias wifi='sudo wifi-menu'

# fasd shortcuts
alias m='f -e mpv'

# additional git aliases
alias gmn="git merge --no-ff"

# pacman stuff
alias pac='sudo pacman -S'
alias aur='packer -S'
alias syu='sudo pacman -Syu'
alias asyu='packer -Syu'
alias rncs='sudo pacman -Rncs'
# remove orphaned packages
alias pacro="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
alias getmirrors='curl -o mirrorlist https://www.archlinux.org/mirrorlist/\?country\=all\&protocol\=https\&ip_version\=4\&ip_version\=6\&use_mirror_status\=on && sed -i s/\#Server/Server/ mirrorlist'

alias autolock="xautolock -time 9 -locker '~/.i3/i3exit.sh lock' &"
alias stoplock="pkill -15 xautolock"

# programs
alias ag='ag --hidden'
alias yt='youtube-dl'
alias c='pcalc'
alias pdf=zathura
alias t=tungsten
alias mix=alsamixer
alias R='R --quiet'
alias soly='curl -s wttr.in/solothurn | head -n -3'
alias moon='curl -s wttr.in/moon | head -n -3'

alias tab='i3-msg layout tabbed && '

# config files
alias i3c='vim ~/.i3/config'
alias i3s='vim ~/.i3/i3status.conf'
alias aka='vim ${ZSH}/custom/aliases.zsh'

# ip address config
alias myip='hostname -i'
alias ip+='sudo ip addr add dev enp0s25'
alias ip-='sudo ip addr delete dev enp0s25'
alias ip~='sudo ip addr replace dev enp0s25'

# start vim with sudo rights (with some fasd magic)
#alias suv='sudo vim -u ~/.vimrc +"colorscheme desert"'
alias suv='sudoedit'
# quick opening files with vim
alias v='f -e vim'

# list files in current dir not older than 5 minutes
# could be appendend with |xargs -r0 rm to delete them
alias findnew='find ./ -type f -cmin -5 -print0'

# find Raspberry-Pis in my network
alias lspi='sudo nmap -sP 192.168.112.0/24 | grep Pi -B 2'
alias lspia='sudo nmap -sP 192.168.1.0/24 | grep Pi -B 2'
alias lspih='sudo nmap -sP 10.0.0.0/24 | grep Pi -B 2'
alias burnpi="sudo dd if='${HOME}/dwl/iso/petPi.img' of=/dev/mmcblk0 bs=1M"

# verbose version of lsblk to list block devices
alias lsblkv='lsblk -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINT,UUID,LABEL,PARTUUID,PARTLABEL,FSTYPE'

# remote access
alias ⚷='ssh-add ~/.ssh/can@W530'
alias gt5="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u 'GRAPH-TECH\\can' gt-server5:3389"
alias gt6="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u Administrator gt-server6:3389"
alias gtso="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u 'GRAPH-TECH\\can' gt-data02:3389"
alias gt-lab="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off 192.168.112.102:3389"
alias gibs="rdesktop -f -g 100% -K -P -z -x l -a 16 -r sound:off -u 'BBZSOGR\\cyril.andreatta' GISO_INF_L04.bbzsogr.local:3389"
alias github="https://github.com/andreatta"

# git
alias gbb="git remote add origin git@bitbucket.org:gtcee/${PWD##*/}.git && git push -u origin --all"

# blackarch
alias lsblackarch="sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u"

###
# webdesign

alias modebuero-style='vim scp://hostet5/httpdocs/modebuero/wp-content/themes/square-child/style.css'
alias modebuero-style-org='vim scp://hostet5/httpdocs/modebuero/wp-content/themes/square/style.css'
alias andreatta-style='vim scp://hostet5/httpdocs/andreatta/wp-content/themes/drento-cee/style.css'

# GT
alias smgt="smbclient '\\\gt-data02\\Daten' -U 'GRAPH-TECH\\can'"

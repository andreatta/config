# just some convenience aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -Ahl'
alias lll='ls -Ahls'
alias df='df -h'
alias :q='exit'
alias pac='sudo pacman -S'
alias aur='sudo packer -S'

alias i3c='vim ~/.i3/config'
alias i3s='vim ~/.i3/i3status.conf'

# start vim with sudo rights
alias suv='sudo vim -u ~/.vimrc +"colorscheme desert"'

# verbose version of lsblk to list block devices
alias lsblkv='lsblk -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINT,UUID,LABEL,PARTUUID,PARTLABEL,FSTYPE'

# GT
alias gt3="rdesktop -g 1920x1080 -P -z -x l -r sound:off -u Administrator gt-server3:3389"
alias gt4="rdesktop -g 1920x1080 -P -z -x l -r sound:off -u Administrator gt-server4:3389"
alias gt5="rdesktop -f -g 1920x1080 -P -z -x l -r sound:off -u 'GRAPH-TECH\\can' gt-server5:3389"
alias gt6="rdesktop -g 1920x1080 -P -z -x l -r sound:off -u Administrator gt-server6:3389"
alias gt-lab="rdesktop -g 1440x900 -P -z -x l -r sound:off 192.168.112.102:3389"
alias github="https://github.com/andreatta"


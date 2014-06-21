# just some convenience aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -Ahl'
alias df='df -h'
alias pac='sudo pacman -S'
alias aur='sudo packer -S'

# start vim with sudo rights
alias suv='sudo vim -u ~/.vimrc +"colorscheme desert"'

# verbose version of lsblk to list block devices
alias lsblkv='lsblk -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINT,UUID,LABEL,PARTUUID,PARTLABEL,FSTYPE'

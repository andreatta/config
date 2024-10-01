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
alias aur='pacaur -S'
alias syu='sudo pacman -Syu'
alias asyu='pacaur -Syu'
alias rncs='sudo pacman -Rncs'
alias uq="qutebrowser -V | grep '^Git commit' | cut -d' ' -f3 && aur qutebrowser-git --noconfirm && qutebrowser -V | grep '^Git commit' | cut -d' ' -f3"
# remove orphaned packages
alias pacro="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
alias getmirrors='curl -o mirrorlist https://www.archlinux.org/mirrorlist/\?country\=all\&protocol\=https\&ip_version\=4\&ip_version\=6\&use_mirror_status\=on && sed -i s/\#Server/Server/ mirrorlist'

alias startlock="xautolock -time 9 -locker '~/.i3/i3exit.sh lock' &"
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

# start vim with sudo rights (with some fasd magic)
#alias suv='sudo vim -u ~/.vimrc +"colorscheme desert"'
alias suv='sudoedit'
# quick opening files with vim
alias v='f -e vim'

# list files in current dir not older than 5 minutes
# could be appendend with |xargs -r0 rm to delete them
alias findnew='find ./ -type f -cmin -5 -print0'

# verbose version of lsblk to list block devices
alias lsblkv='lsblk -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINT,UUID,LABEL,PARTUUID,PARTLABEL,FSTYPE'

# remote access
alias github="https://github.com/andreatta"

# git
alias gbb="git remote add origin git@bitbucket.org:gtcee/${PWD##*/}.git && git push -u origin --all"
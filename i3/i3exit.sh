#!/bin/bash
############################################################
# 
############################################################

function lock {
    i3lock -i ~/img/deathstar.jpg
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend | lock
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|reboot|shutdown}"
        exit 2
esac

exit 0

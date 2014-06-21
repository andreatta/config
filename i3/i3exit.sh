#!/bin/bash
############################################################
# 
############################################################

function lock {
    i3lock -i ~/img/deathstar.png
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
    poweroff)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|reboot|poweroff}"
        exit 2
esac

exit 0

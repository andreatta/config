#!/usr/bin/bash

###
# Little helper script to start a DHCP server on this computer
# https://wiki.archlinux.org/index.php/Dhcpd
###

## DHCP config = /etc/dhcpcd.conf

dev=enp0s25
ip=139.96.30.100

# start ethernet interface and set fixed IP
sudo ip link set up dev $dev
sudo ip addr add $ip dev $dev

# start DHCP deamon
sudo systemctl start dhcpd4.service

#! /bin/bash

# load X resources
xres=${HOME}/.Xresources
if [ -s $xres ]; then
	xrdb $xres
fi

# load customized keyboard layout
xmod=${HOME}/.Xmodmap
if [ -s $xmod ]; then
	xmodmap $xmod
fi

# make Qt blend in
export QT_STYLE_OVERRIDE='gtk2'

# start gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

#eval $(ssh-agent)
exec i3

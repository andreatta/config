#! /usr/bin/sh

#xrandr --dpi 144

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

# export DISPLAY for dbus
# needed for gnome-keyring
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# start gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# make Qt blend in
export QT_STYLE_OVERRIDE='gtk2'

# lastly start the window manager
exec i3

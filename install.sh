#!/bin/bash
############################################################
# simple script to link the settings from git to the
# right place. 
# 
############################################################

echo "install script for ceerious settings"

function conf_X {
	echo "creating link to .Xdefault (needed for urxvt)"
	ln -s ${PWD}/X/.Xdefaults ~/.Xdefaults 
}

function conf_i3 {
	echo "configure i3"
	mkdir -p ~/.i3
	ln -s ${PWD}/i3/config ~/.i3/config
	ln -s ${PWD}/i3/i3status.conf ~/.i3/i3status.conf


}

function get_packer {
	sudo pacman -S wget fakeroot jshon expac
	cd /tmp
	wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD
	makepkg
	pacman -U packer-*.pkg.tar.xz
}

function conf_zsh {
	ln -s ${PWD}/zsh/.zprofile ~/.zprofile
}
##############################
conf_X
#conf_i3
#get_packer

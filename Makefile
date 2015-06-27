# makefile for setting up my config files

.PHONY: \
	dunst locale ranger zathura issue packer xmodmap vconsole zsh

dunst:
	@mkdir -p ${HOME}/.config/dunst
	@ln -s ${PWD}/dunst/dunstrc ${HOME}/.config/dunst/dunstrc

locale:
	@sudo ln -sf ${PWD}/etc/locale.conf /etc

vconsole:
	@sudo ln -sf ${PWD}/etc/vconsole.conf /etc

issue:
	@sudo ln -sf ${PWD}/etc/issue /etc

packer:
	sudo pacman -S wget fakeroot jshon expac
	cd /tmp
	wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD
	makepkg
	pacman -U packer-*.pkg.tar.xz packer

ranger:
	@mkdir -p ${HOME}/.config/ranger
	@$(foreach file,${PWD}/ranger/*,ln -s $(file) ${HOME}/.config/ranger;)

zsh:
	@ln -s ${PWD}/zsh/.zshrc ${HOME}
	@ln -s ${PWD}/zsh/.zsh ${HOME}
	@ln -s ${PWD}/zsh/.zprofile ${HOME}

xmodmap:
	@ln -s ${PWD}/X/.Xmodmap ${HOME}

zathura:
	@ln -s ${PWD}/zathura/zathurarc ${HOME}

.PHONY: all etc
etc:
	issue locale vconsole
all:
	dunst locale ranger zathura issue packer xmodmap vconsole zsh

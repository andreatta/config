# makefile for setting up my config files

.PHONY: \
	dunst locale ranger zathura issue packer x vconsole zsh vim qutebroser compton youtube-dl

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
	# use oh-my-zsh from git repo
	@ln -s ${PWD}/zsh/.zshrc ${HOME}
	@ln -s ${PWD}/zsh/.zprofile ${HOME}
	#@ln -s ${PWD}/zsh/aliases.zsh /usr/share/oh-my-zsh/custom
	@ln -s ${PWD}/zsh/aliases.zsh ~/src/oh-my-zsh/custom

x:
	@ln -sf ${PWD}/X/.Xmodmap ${HOME}
	@ln -sf ${PWD}/X/.Xresources ${HOME}
	@ln -sf ${PWD}/X/.xinitrc ${HOME}

vim:
	@cp ${PWD}/vim/.vim ${HOME}
	@mkdir -p ${HOME}/.vim/undo

zathura:
	@ln -s ${PWD}/zathura ${HOME}/.config

qutebrowser:
	ln -s ${PWD}/qutebroser ~/.config

compton:
	ln -s ${PWD}/compton/compton.conf ~/.config

youtube-dl:
	ln -s ${PWD}/youtube-dl/youtube-dl.conf ~/.config

.PHONY: all etc
etc:
	issue locale vconsole
all:
	dunst locale ranger zathura issue packer x vconsole zsh vim qutebroswer compton youtube-dl

.DEFAULT_GOAL := setup

REPO := ${PWD}
DISTRO := $(shell lsb_release -is)

APT_DISTROS := Zorin Ubuntu

ifneq ($(filter ${DISTRO},${APT_DISTROS}),)
	INSTALL_COMMAND := sudo apt install
else  # By default arch-based distro
	INSTALL_COMMAND := yay -S
endif

include zsh/Makefile

setup: zsh install-packages node python

setup-deps:
	sudo add-apt-repository ppa:hluk/copyq

	# Code
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
	sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
	rm -f packages.microsoft.gpg
	
	sudo apt update

install-deps: $(if $(filter ${DISTRO},${APT_DISTROS}), setup-deps)
ifeq ($(filter ${DISTRO},${APT_DISTROS}),)
	${INSTALL_COMMAND} microsoft-edge-stable-bin
endif
	${INSTALL_COMMAND} copyq code

node:
	curl https://get.volta.sh | bash -s -- --skip-setup

python:
	curl https://pyenv.run | bash

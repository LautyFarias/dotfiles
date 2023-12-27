ZSH_FOLDER := /zsh
ZSH_PLUGINS := ~/.oh-my-zsh/plugins

DISTRO := $(shell lsb_release -is)

APT_DISTROS := Zorin Ubuntu

ifneq ($(filter ${DISTRO},${APT_DISTROS}),)  
	INSTALL_COMMAND := sudo apt install
else  # By default arch-based distro
	INSTALL_COMMAND := yay -S
endif

setup-zsh:
	make install-zsh
	make install-ohmyzsh
	make install-zsh-plugins
	make setup-zshrc
	make setup-zshenv

install-zsh:
	${INSTALL_COMMAND} zsh

install-zsh-plugins:
	gh repo clone zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/zsh-autosuggestions
	gh repo clone zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM}/zsh-syntax-highlighting

	${INSTALL_COMMAND} fzf

setup-zshenv:
	$(if $(wildcard ~/.zshenv), mv ~/.zshenv ~/.zshenv.old)
	ln "${REPO}${ZSH_FOLDER}/.zshenv" ~/.zshenv

setup-zshrc:
	$(if $(wildcard ~/.zshrc), mv ~/.zshrc ~/.zshrc.old)
	ln "${REPO}${ZSH_FOLDER}/.zshrc" ~/.zshrc

install-ohmyzsh:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

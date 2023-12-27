ZSH_FOLDER := /zsh
ZSH_PLUGINS := ~/.oh-my-zsh/plugins

setup-zsh:
	make install-zsh
	make install-ohmyzsh
	make install-zsh-plugins
	make setup-zshrc
	make setup-zshenv

install-zsh:
	${INSTALL_COMMAND} zsh

install-zsh-plugins:
	gh repo clone zsh-users/zsh-autosuggestions ${ZSH_PLUGINS}/zsh-autosuggestions
	gh repo clone zsh-users/zsh-syntax-highlighting ${ZSH_PLUGINS}/zsh-syntax-highlighting

	${INSTALL_COMMAND} fzf

setup-zshenv:
	$(if $(wildcard ~/.zshenv), mv ~/.zshenv ~/.zshenv.old)
	ln "${REPO}${ZSH_FOLDER}/.zshenv" ~/.zshenv

setup-zshrc:
	$(if $(wildcard ~/.zshrc), mv ~/.zshrc ~/.zshrc.old)
	ln "${REPO}${ZSH_FOLDER}/.zshrc" ~/.zshrc

install-ohmyzsh:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

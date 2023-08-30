ZSH_FOLDER := /zsh

setup-zsh:
	make install-zsh
	make install-zsh-plugins
	make setup-zshenv
	make setup-zshrc
	make install-ohmyzsh

install-zsh:
	yay -S zsh

install-zsh-plugins:
	yay -S zsh-autosuggestions zsh-syntax-highlighting fzf

setup-zshenv:
	$(if $(wildcard ~/.zshenv), mv ~/.zshenv ~/.zshenv.old)
	ln "${REPO}${ZSH_FOLDER}/.zshenv" ~/.zshenv

setup-zshrc:
	$(if $(wildcard ~/.zshrc), mv ~/.zshrc ~/.zshrc.old)
	ln "${REPO}${ZSH_FOLDER}/.zshrc" ~/.zshrc

install-ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc

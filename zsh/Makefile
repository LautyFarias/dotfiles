ZSH_FOLDER := /zsh
ZSH_PLUGINS := ~/.oh-my-zsh/plugins

zsh: install-zsh-plugins zsh-dotfiles

install-zsh:
	${INSTALL_COMMAND} zsh

install-ohmyzsh: install-zsh
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

install-zsh-plugins: install-ohmyzsh
	gh repo clone zsh-users/zsh-autosuggestions ${ZSH_PLUGINS}/zsh-autosuggestions
	gh repo clone zsh-users/zsh-syntax-highlighting ${ZSH_PLUGINS}/zsh-syntax-highlighting

	${INSTALL_COMMAND} fzf

zsh-dotfiles:
	$(if $(wildcard ~/.zshenv), mv ~/.zshenv ~/.zshenv.old)
	ln "${REPO}${ZSH_FOLDER}/.zshenv" ~/.zshenv

	$(if $(wildcard ~/.zshrc), mv ~/.zshrc ~/.zshrc.old)
	ln "${REPO}${ZSH_FOLDER}/.zshrc" ~/.zshrc

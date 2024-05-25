ZSH_PLUGINS := ~/.oh-my-zsh/plugins

ohmyzsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh-plugins:
	gh repo clone zsh-users/zsh-autosuggestions ${ZSH_PLUGINS}/zsh-autosuggestions
	gh repo clone zsh-users/zsh-syntax-highlighting ${ZSH_PLUGINS}/zsh-syntax-highlighting

zshrc:
	$(if $(wildcard ${HOME}/.zshrc), mv ${HOME}/.zshrc ${HOME}/.zshrc.old)
	ln "${REPO}/zsh/.zshrc" ${HOME}/.zshrc

zshenv:
	$(if $(wildcard ${HOME}/.zshenv), mv ${HOME}/.zshenv ${HOME}/.zshenv.old)
	ln "${REPO}/zsh/.zshenv" ${HOME}/.zshenv

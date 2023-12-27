ALACRITTY_FOLDER := ${REPO}/alacritty

CONFIG_FOLDER := ~/.config/alacritty

alacritty: install-alacritty
	$(if $(wildcard ${CONFIG_FOLDER}), mv ${CONFIG_FOLDER} ${CONFIG_FOLDER}.old)
	ln -s ${ALACRITTY_FOLDER} ${CONFIG_FOLDER}

install-alacritty:
	${INSTALL_COMMAND} alacritty
.DEFAULT_GOAL := setup

REPO := ${PWD}

include zsh/Makefile

setup:
	make setup-zsh
	make install-packages:
	setup-node
	setup-python

install-packages:
	yay -S bitwarden copyq microsoft-edge-stable-bin visual-studio-code-bin

setup-node:
	yay -S nvm

setup-python:
	yay -S pyenv python-pip
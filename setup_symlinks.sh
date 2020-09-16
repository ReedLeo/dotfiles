#!/usr/bin/env zsh

if [[ -f .aliases ]]; then
	if [[ -f ~/.aliases ]]; then
		rm -rf ~/.aliases
	fi
	ln -s $(pwd)/.aliases ~/.aliases
fi

if [[ -f .tmux.conf ]]; then
	if [[ -f ~/.tmux.conf ]]; then
		rm -rf ~/.tmux.conf
	fi
	ln -s $(pwd)/.tmux.conf ~/.tmux.conf
fi

if [[ -f .zshrc ]]; then
	if [[ -f ~/.zshrc ]]; then
		rm -rf ~/.zshrc
	fi
	ln -s $(pwd)/.zshrc ~/.zshrc
fi

# set up for python-pip's source
if [[ -d "~/.pip/" ]]; then
	mkdir "~/.pip/"
fi

if [[ -f "./python/.pip/pip.conf" ]]; then
	if [[ -f "~/.pip/pip.conf" ]]; then
		rm -f "~/.pip/pip.conf"
	fi
	ln -s "$(pwd)/python/.pip/pip.conf ~/.pip/pip.conf"
fi

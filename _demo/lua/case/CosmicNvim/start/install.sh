#!/usr/bin/env bash

if [ -a ~/.config/nvim ]; then
	echo
	echo 'Exists: ~/.config/nvim'
	echo
	echo 'Please remove first:'
	echo
	echo 'rm ~/.config/nvim -rf'
	echo

	exit 0
fi

git clone https://github.com/CosmicNvim/CosmicNvim.git ~/.config/nvim

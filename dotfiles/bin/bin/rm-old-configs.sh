#!/bin/bash

DOTFS=$1
TARGETD=$2

echo $@

PACKAGES=(
	alacritty
	bash
	bin
	conda
	git
	konsole
	nvim
)

for PKG in ${PACKAGES[@]}; do
	CONFLICTS=$(stow -d ${DOTFS} -t ${TARGETD} --no --verbose $PKG 2>&1 | awk '/\* existing target is/ {print $NF}')
	for filename in ${CONFLICTS[@]}; do
		if [[ -f $HOME/$filename || -L $HOME/$filename ]]; then
			echo "DELETE: $filename"
			rm -f "$HOME/$filename"
		fi
	done
done

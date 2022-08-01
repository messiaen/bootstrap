#!/bin/bash

NVIM_URL="https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz"
GO_URL="https://go.dev/dl/go1.18.3.linux-amd64.tar.gz"

# install things
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y \
	build-essential \
	llvm \
	clang \
	clang-tools \
	clangd \
	clang-format \
	cmake \
	pkg-config \
	python3 \
	curl \
	python3.10-venv \
	neovim \
	cifs-utils \
	stow \
	awesome \
	suckless-tools \
	fd-find \
	ripgrep \
	debhelper \
	git \
	pandoc \
	shunit2

mkdir -p ${HOME}/opt
cd ${HOME}/opt

curl -L -XGET ${NVIM_URL} | tar -xz
curl -L -XGET ${GO_URL} | tar -xz

cd ${HOME}
# Install starship
mkdir -p ${HOME}/.fonts
mkdir -p ${HOME}/Downloads
## install font in ~/.fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
cd ${HOME}/Downloads
curl -sS https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip > FiraCode.zip
cd ${HOME}/.fonts
unzip ${HOME}/Downloads/FiraCode.zip
cd ${HOME}
curl -sS https://starship.rs/install.sh | sh

#git clone https://github.com/mkropat/jumpapp.git code/jumpapp
#cd code/jumpapp
#make deb
#sudo dpkg -i jumpapp*all.deb
# if there were missing dependencies
#sudo apt-get install -f
#cd ${HOME}

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

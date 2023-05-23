#!/bin/bash

# Install the repositories
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update -y && sudo apt upgrade -y

# Install the dependencies
sudo apt-get install -y git build-essential curl grep python3.11

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Install rust and cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install node and npm
nvm install node

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# Install lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

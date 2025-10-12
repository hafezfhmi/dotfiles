#!/bin/bash

# UPDATE APT packages
sudo apt update

# INSTALL NECESSARY PROGRAMS
echo "--- Installing necessary programs ---"
sudo apt install xz-utils
sudo apt install curl
sudo apt install git
echo "--- Completed installing necessary programs ---"

# INSTALL LAZYVIM REQUIREMENTS
echo "--- Installing lazyvim requirements ---"
echo "--- Installing neovim ---"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo mv /opt/nvim-linux-x86_64 /opt/nvim
rm nvim-linux-x86_64.tar.gz

echo "--- Installing Nerd Fonts JetbrainsMono ---"
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
sudo mkdir -p /usr/share/fonts
sudo tar -C /usr/share/fonts -xf JetBrainsMono.tar.xz
rm JetBrainsMono.tar.xz

echo "--- Installing Lazygit ---"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
rm lazygit.tar.gz
rm lazygit

echo "--- Installing gcc ---"
sudo apt install gcc

echo "--- Installing fzf ---"
sudo apt install fzf

echo "--- Installing ripgrep ---"
sudo apt install ripgrep

echo "--- Installing fd ---"
sudo apt install fd-find
mkdir -p ~/.local/bin
ln -sf $(which fdfind) ~/.local/bin/fd

echo "--- Completed installing lazyvim requirements ---"

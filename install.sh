#!/bin/bash

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

# other requirement that is already installed:
# - curl

echo "--- Completed installing lazyvim requirements ---"

# TODO: Okay, for lazyvim, we don't need to do any program installation. We only need to manage the dotfiles that is located in ~/.config folder
# TODO: We might not need to write to our .bashrc as seen in this file for adding the env PATH. Instead, we will add .bashrc to our dotfiles

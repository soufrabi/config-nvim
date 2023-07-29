#!/bin/sh



# Install Packer plugin manager

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Clone neovim config

mkdir -p ~/.config
git clone https://github.com/anirbandey1/nvim.git ~/.config/nvim

#!/bin/sh

mkdir neovim_download
cd neovim_download

# Download deb file
curl -LJO https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

cd ..
/bin/rm -r neovim_download

# Arch Linux Neovim install script


# Install neovim
sudo pacman -S nvim


# Install nodejs, npm, yarn

sudo pacman -S nodejs
sudo pacman -S npm
sudo npm -g update
sudo npm i -g yarn
sudo npm i -g neovim


# Python suppport

sudo pacman -S python-pip
pip install venvs

#Install in virtualenv
python -m venv ~/.venvs/.nvim-venv && source ~/.venvs/.nvim-venv/bin/activate && python3 -m pip install --upgrade pip && python3 -m pip install pynvim && which python


# Install Packer plugin manager

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim





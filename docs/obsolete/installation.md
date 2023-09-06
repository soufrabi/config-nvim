## Installation

#### For Arch
```
sudo pacman -S nvim
```

#### For Ubuntu

###### Snap Store method
```
sudo snap install nvim --classic
```

###### PPA method [link](https://www.linuxcapable.com/how-to-install-neovim-editor-on-ubuntu-22-04-lts/)

```
# Make your Ubuntu system up-to-date by using the following command

sudo apt update && sudo apt upgrade -y

# Install the following dependencies

sudo apt install software-properties-common -y

# Import the PPA using the following command
# Please note that only one version can be installed simultaneously
# So if you import both stable and unstable versions 
# Then unstable version will be installed as it is the newest version

# Import Stable Neovim PPA

sudo add-apt-repository ppa:neovim-ppa/stable -y

# Import Unstable Neovim PPA

sudo add-apt-repository ppa:neovim-ppa/unstable -y

# Run an APT update to sync the changes

sudo apt-get update

# With the PPA imported, install the editor

sudo apt install neovim -y
```

For Windows 
```
# Run as administrator

choco install neovim
```

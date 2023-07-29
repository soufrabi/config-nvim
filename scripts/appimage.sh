#!/bin/sh

if [ ! "$USER" = "root" ]; then
	echo "Please run the command as root user"
	echo "Script needs elevated priviledges"
	echo "Exiting"
	exit 1
else 
	echo "Running commands as root user"
fi


rm -rv /opt/neovim-linux64
unlink /usr/local/bin/nvim

mkdir -pv /opt/neovim-linux64
cd /opt/neovim-linux64

curl -LJO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod --verbose +x nvim.appimage
./nvim.appimage --appimage-extract

ln -sv /opt/neovim-linux64/squashfs-root/usr/bin/nvim /usr/local/bin




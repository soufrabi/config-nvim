#!/bin/sh

check_if_user_is_root() {

if [ ! "$USER" = "root" ]; then
	echo "Please run the command as root user"
	echo "Script needs elevated priviledges"
	echo "Exiting"
	exit 1
else 
	echo "Running commands as root user"
fi

}

remove_package() {

rm -rv /opt/neovim-linux64
unlink /usr/local/bin/nvim

}

install_package() {

mkdir -pv /opt/neovim-linux64
cd /opt/neovim-linux64

curl -LJO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod --verbose +x nvim.appimage
./nvim.appimage --appimage-extract

ln -sv /opt/neovim-linux64/squashfs-root/usr/bin/nvim /usr/local/bin

}


main() {

if [ ! "$#"  = 1 ] ; then
	echo "Please provide the operation"
	exit 1
fi


if [ "$1" = "install" ] ; then
	echo "Install"
	check_if_user_is_root
	install_package
elif [ "$1" = "clean" ] ; then
	echo "Clean"
	check_if_user_is_root
	remove_package
else
	echo "Unknown option"
fi


}

main "$@"


#!/bin/bash

if [ $(whoami) != "root" ] 
then
	echo "You need run this script as root"
	exit 1
fi

apt-get update
echo "Installing WIFI driver..."
apt-get install firmware-atheros
echo "Installing WIFI driver...DONE"


echo "Installing network manager..."
apt-get install network-manager
echo "Edit /etc/network/interfaces and /etc/NetworkManager/NetworkManager.conf files."
echo "See wiki repository to more information."
read -p "Press ENTER to continue"
systemctl restart Networkmanager
echo "Installing network manager...DONE"

read -p "Press ENTER to reboot system"
reboot

exit 0








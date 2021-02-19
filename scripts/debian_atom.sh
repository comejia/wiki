#!/bin/bash

#set -e

USERNAME=cmejia

if [ $(whoami) != "root" ]; then
	echo "Run this script '$0' as root"
	exit 1
fi

echo "Installing Atom..."

apt-get update
#apt-get install --yes libgconf-2-4
#apt --fix-broken install --yes

cd /tmp
wget https://atom.io/download/deb -O atom-amd64.deb
#dpkg -i atom-amd64.deb
apt install --yes ./atom-amd64.deb

echo "Installing Atom...DONE"

exit 0


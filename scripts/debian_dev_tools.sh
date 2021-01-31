#!/bin/bash

if [ $(whoami) != "root" ] 
then
	echo "You need run this script as root"
	exit 1
fi

echo "Installing google-chrome-stable..."
apt-get update
apt-get install fonts-liberation # dependency for google-chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome.deb
cd /tmp
dpkg -i google-chrome.deb
echo "Installing google-chrome-stable...DONE"

exit 0

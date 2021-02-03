#!/bin/bash

set -e

USERNAME=cmejia
ANDROID_INSTALL_PATH=/opt/android-studio

if [ $(whoami) != "root" ]; then
	echo "Run this script '$0' as root"
	exit 1
fi

echo "Installing Android Studio..."

echo "Download Android Studio from https://developer.android.com/studio#downloads in ~/Download folder"
read -p "Press [ENTER] after to download app"

cd ~/Downloads
# Check if app exists
[[ ! -e $(ls | grep android-studio-*.tar.gz) ]] && echo "You have not downloaded Android Studio yet" && exit 1

mkdir -p $ANDROID_INSTALL_PATH
tar -xzvf android-studio-ide-*-linux.tar.gz -C $ANDROID_INSTALL_PATH --strip-components=1

chown -R $USERNAME:$USERNAME $ANDROID_INSTALL_PATH


ANDROID_ENV_TITLE="# Android environment variables"

if [ $(grep -x "$ANDROID_ENV_TITLE" ~/.bashrc | wc -l) -eq 0 ]; then
	echo $ANDROID_ENV_TITLE >> ~/.bashrc
	echo '' >> ~/.bashrc
	echo '' >> ~/.bashrc
	echo '' >> ~/.bashrc
	echo '' >> ~/.bashrc
fi

echo "Logout as root and run $ANDROID_INSTALL_PATH/bin/studio.sh script"
read -p "Press [ENTER] to continue."

echo "Installing Android Studio...DONE"

exit 0

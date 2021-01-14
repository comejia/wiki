#!/bin/bash

if [ $(whoami) != "root" ] 
then
	echo "You need run this script as root"
	exit 1
fi

echo "Installing certificates..."
apt-get install -y ca-certificates
echo "Installing certificates...DONE"

echo "Updating system repositories..."
echo "Testing repository"
echo "deb http://deb.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list
echo "Buster backports"
echo "deb http://deb.debian.org/debian/ buster-backports main contrib non-free" >> /etc/apt/sources.list
read -p "Check changes in sources.list and press ENTER to continue"
apt-get update
echo "Updating system repositories...DONE"

echo "Updating kernel image..."
apt-cache search linux-image
echo "Enter linux image and headers"
read linux_image linux_headers
if [ -n linux-image ]
then
	apt-get install --yes $linux_image $linux_headers
else
	echo "Error typing linux image"
	exit 1
fi


echo "Installing system operating tools..."
# System tools
apt-get install -y -t testing live-task-standard
apt-get install -y build-essential vim git htop curl wget libcanberra0 tree bash-completion

# Hardware tools
apt-get install -y inxi neofetch mesa-utils hardinfo xutils usbutils pm-utils cpufrequtils lm-sensors

# Firmware tools
apt-get install -y -t buster-backports firmware-linux firmware-misc-nonfree firmware-linux-nonfree

# Multimedia tools
apt-get install -y pulseaudio pavucontrol mpv mediainfo file highlight w3m-img caca-utils atool poppler-utils ffmpeg ffmpegthumbnailer xpdf feh

# Miscellaneous tools
apt-get install -y xbindkeys fonts-noto-color-emoji xbacklight

# Extra tools
apt-get install -y ranger rsync atool xrandr mpt-tools firefox-esr

# Windows manager
apt-get install -y i3

# Display manager
apt-get install -y lightdm

echo "Installing system operating tools...DONE"

echo "Starting Xserver, set keybind for windows manager"
read -p "Press ENTER to continue"
startx

# xrandr: setting monitor (displays)
# xpdf: pdf viewer
# feh: image viewer
# ranger: console file manager
# mpv: video viewer
# ffmpegthumbnailer: show video preview from console
# w3m-img: show image preview from console
# mediainfo, file, highlight: extra info tools to file manager
# pulseaudio: package to audio
# pavucontrol: audio control by GUI
# mpt-tools: media transport protocol, detect Android phones. Use mtp-detect command if you have a problem
# xbindkeys: To control multimedia buttons
# inxi, neofetch, hardinfo, cpufrequtils: tools to show system hardware and software info

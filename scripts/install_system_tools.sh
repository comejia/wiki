#!/bin/bash

apt-get update

apt-get install vim inxi neofetch htop mesa-utils hardinfo xutils usbutils pm-utils cpufrequtils git lm-sensors firefox-esr libcanberra0 pulseaudio pavucontrol tree build-essential curl

apt-get install -t buster-backports firmware-linux firmware-misc-nonfree firmware-linux-nonfree

# i3 windows manager
# apt-get install i3

# Display manager
# apt-get install lightdm

# Start server if you did install a Display manager
# startx

# Extra tools
# apt-get install rsync ranger mpv mediainfo file highlight w3m-img caca-utils atool poppler-utils ffmpegthumbnailer xpdf feh xrandr mtp-tools xbindkeys fonts-noto-color-emoji xbacklight

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

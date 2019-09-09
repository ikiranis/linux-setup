#!/bin/bash

# Add repositories

# Repository for Albert, in Ubuntu 19.04
# https://albertlauncher.github.io/docs/installing/
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_19.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_19.04/Release.key -O Release.key
sudo apt-key add - < Release.key

# Repository for Timeshift
# https://teejeetech.in/timeshift/
sudo add-apt-repository -y ppa:teejee2008/ppa

# Install software
sudo apt update

# Basic software/tools
sudo apt install htop git albert timeshift vlc gnome-tweaks gnome-tweak-tool spell gdebi myspell-el-gr -y

# Graphics
sudo apt install gimp -y

# Games
sudo apt install steam-installer -y

# Install cronopete
# http://www.rastersoft.com/programas/cronopete.html
# for 18.04
wget http://www.rastersoft.com/descargas/cronopete/cronopete-bionic_4.4.0-ubuntu1_amd64.deb
# for 19.04
# wget http://www.rastersoft.com/descargas/cronopete/cronopete-disco_4.11.0-ubuntu1_amd64.deb
sudo gdebi cronopete*.deb

# Remove junk
sudo apt-get remove ubuntu-web-launchers thunderbird rhythmbox -y

# Gotta reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"

#!/bin/bash

# Install albert
# https://albertlauncher.github.io/docs/installing/

# Add repositories

# Repository for Albert, in Ubuntu 19.04
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_19.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_19.04/Release.key -O Release.key
sudo apt-key add - < Release.key

# Install software
sudo apt update

# Basic software/tools
sudo apt install htop git albert vlc gnome-tweaks gnome-tweak-tool spell myspell-el-gr -y

# Graphics
sudo apt install gimp -y

# Games
sudo apt install steam-installer -y

# Remove junk
sudo apt-get remove ubuntu-web-launchers thunderbird rhythmbox -y

# Gotta reboot now:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"

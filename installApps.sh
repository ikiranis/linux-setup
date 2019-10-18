#!/bin/bash

# Install Visual Studio Code
sudo snap install code --classic

# Install PHPStorm
sudo snap install phpstorm --classic

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

# Install Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo gdebi skypeforlinux-64.deb

# Install Dropbox
 wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
 sudo gdebi download\?dl\=packages%2Fubuntu%2Fdropbox_2019.02.14_amd64.deb 

# Install LibreOffice
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update
sudo apt install libreoffice

# Install kdenlive
sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo apt-get update
sudo apt install kdenlive

#Install OBS
sudo apt install obs-studio

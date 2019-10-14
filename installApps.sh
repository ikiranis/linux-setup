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
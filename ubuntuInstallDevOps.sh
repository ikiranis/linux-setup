#!/bin/bash

# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge"
sudo apt install -y docker-ce docker-compose
sudo usermod -aG docker ${USER}
su ${USER}

# Install Node/npm/vue
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install -g @vue/cli

# Install Composer/PHP
sudo apt install php7.3 php7.3-mysql libapache2-mod-php7.3 php7.3-mbstring php7.3-xml -y
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo apt remove apache2 -y

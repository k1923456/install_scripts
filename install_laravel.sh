#!/bin/bash

sudo apt-get update
# Install apache and curl
sudo apt-get install -y apache2 curl
# Install PHP from ppa:ondrej/php
sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
# Install PHP-7.2
sudo apt-get install -y php7.2 php7.2-cli php7.2-common
# Disable PHP-7.0 and enable PHP-7.2
a2dismod php7.0 && a2enmod php7.2
#Install Laravel
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

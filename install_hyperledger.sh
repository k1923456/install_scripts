#!/bin/bash

USER=santai

# Install Docker
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Make docker don't need sudo
sudo groupadd docker
sudo gpasswd -a $USER docker

bash ./install_go.sh

bash ./install_node.sh

sudo apt-get install -y python

curl -sSL http://bit.ly/2ysbOFE | bash -s

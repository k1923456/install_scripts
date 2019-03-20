#!/bin/bash


# Upgrade package
sudo apt-get update
sudo apt-get -y upgrade

# Download GO into /tmp
cd /tmp
wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz

# Install GO
sudo tar -xvf go1.11.linux-amd64.tar.gz
sudo mv go /usr/local

# Set GO path
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
go version


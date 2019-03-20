#!/bin/bash


sudo touch /etc/apt/sources.list.d/partner.list
sudo bash -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" >> /etc/apt/sources.list.d/partner.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-client-10 postgresql-10 libpq-dev postgresql-server-dev-10 pgadmin4 postgresql-contrib-9.6

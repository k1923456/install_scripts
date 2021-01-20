#/bin/bash

# Dependency
sudo apt-get install -y pkg-config \
                        libestr-dev \
                        libfastjson-dev \
                        libz-dev \
                        uuid-dev \
                        libgcrypt-dev \
                        libcurl-dev \
                        libcurl4-openssl-dev liblogging-stdlog-dev

# Download rsyslog
wget https://www.rsyslog.com/files/download/rsyslog/rsyslog-8.1911.0.tar.gz
cd rsyslog-8.1911.0

# 需要什麼都要在這邊設定
./configure --enable-elasticsearch
make && sudo make install
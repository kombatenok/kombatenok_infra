#!/bin/bash
set -e
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
#sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2
#ultiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt update
sudo apt install -y mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb

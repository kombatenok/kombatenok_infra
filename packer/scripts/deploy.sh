#!/bin/bash
cd $HOME
git clone -b monolith https://github.com/express42/reddit.git
cd reddit
bundle install
puma -d
sudo mv /home/kombatenok/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
###

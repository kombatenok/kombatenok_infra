#!/bin/bash
echo "Hello"
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
mv /home/kombatenok/puma.service /etc/systemd/system/puma.service
systemctl start puma
systemctl enable puma
###

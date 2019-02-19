#!/bin/bash
set -e
source /reddit
bundle install
rvm requirements
sudo chmod 644 /lib/systemd/system/puma.service
systemctl daemon-reload
systemctl start puma
systemctl enable puma
sudo chmod u+x /usr/local/bin/puma
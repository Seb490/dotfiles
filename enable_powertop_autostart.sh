#!/bin/sh
#
cat ~/.dotfiles/powertop.service.txt > /etc/systemd/system/powertop.service
echo "Enable service with following commands:"
echo "sudo systemctl daemon-reload"
echo "sudo systemctl enable powertop.service"


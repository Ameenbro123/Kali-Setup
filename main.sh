#!/bin/sh
sudo apt-get update
sudo apt install python python3 python3-pip python-pip git curl rkhunter aide ufw cmatrix
sudo systemctl enable ufw
sudo ufw enable
clear
echo "UFW Firewall is enabled, to ssh or rdp into this machine you must disable or open a port"
sleep 5

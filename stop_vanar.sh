#!/bin/bash

# Stop and disable blockbook service
sudo systemctl stop blockbook-vanar
sudo systemctl disable blockbook-vanar
sudo rm /etc/systemd/system/blockbook-vanar.service 
sudo systemctl daemon-reload
sudo apt purge blockbook-vanar -y

# Repeat for backend service
# sudo systemctl stop backend-vanar
# sudo systemctl disable backend-vanar
# sudo rm /etc/systemd/system/backend-vanar.service 
# sudo systemctl daemon-reload
# sudo apt purge backend-vanar -y
# 
# # Remove installation directory
# sudo rm -r /opt/coins/nodes/vanar /opt/coins/data/vanar /opt/coins/blockbook/vanar

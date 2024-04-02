#!/bin/bash

# Stop and disable blockbook service
sudo systemctl stop blockbook-ethereum
sudo systemctl disable blockbook-ethereum
sudo rm /etc/systemd/system/blockbook-ethereum.service 
sudo systemctl daemon-reload
sudo apt purge blockbook-ethereum -y

# Repeat for backend service
sudo systemctl stop backend-ethereum
sudo systemctl disable backend-ethereum
sudo rm /etc/systemd/system/backend-ethereum.service 
sudo systemctl daemon-reload
sudo apt purge backend-ethereum -y
# 
# # Remove installation directory
sudo rm -r /opt/coins


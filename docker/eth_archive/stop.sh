#!/bin/bash

# Stop and disable blockbook service
sudo systemctl stop blockbook-ethereum-archive
sudo systemctl disable blockbook-ethereum-archive
sudo rm /etc/systemd/system/blockbook-ethereum-archive.service 
sudo systemctl daemon-reload
sudo apt purge blockbook-ethereum-archive -y

# Repeat for backend service
sudo systemctl stop backend-ethereum-archive
sudo systemctl disable backend-ethereum-archive
sudo rm /etc/systemd/system/backend-ethereum-archive.service 
sudo systemctl daemon-reload
sudo apt purge backend-ethereum-archive -y
# 
# # Remove installation directory
sudo rm -r /opt/coins


#!/bin/bash

# Stop and disable blockbook service
sudo systemctl stop blockbook-ethereum-testnet-vanguard
sudo systemctl disable blockbook-ethereum-testnet-vanguard
sudo rm /etc/systemd/system/blockbook-ethereum-testnet-vanguard.service 
sudo systemctl daemon-reload
sudo apt purge blockbook-ethereum-testnet-vanguard -y

# Repeat for backend service
sudo systemctl stop backend-ethereum-testnet-vanguard
sudo systemctl disable backend-ethereum-testnet-vanguard
sudo rm /etc/systemd/system/backend-ethereum-testnet-vanguard.service 
sudo systemctl daemon-reload
sudo apt purge backend-ethereum-testnet-vanguard -y
# 
# # Remove installation directory
sudo rm -r /opt/coins

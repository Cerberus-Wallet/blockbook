#!/bin/bash

# Stop and disable blockbook service
sudo systemctl stop blockbook-ethereum-testnet-vanguard
sudo systemctl disable blockbook-ethereum-testnet-vanguard
sudo rm /etc/systemd/system/blockbook-ethereum-testnet-vanguard.service 
sudo systemctl daemon-reload
sudo apt purge blockbook-ethereum-testnet-vanguard -y

# Repeat for backend service
# sudo systemctl stop backend-vanar-vanguard
# sudo systemctl disable backend-vanar-vanguard
# sudo rm /etc/systemd/system/backend-vanar-vanguard.service 
# sudo systemctl daemon-reload
# sudo apt purge backend-vanar-vanguard -y
# 
# # Remove installation directory
# sudo rm -r /opt/coins/nodes/vanar_vanguard /opt/coins/data/vanar_vanguard /opt/coins/blockbook/vanar_vanguard

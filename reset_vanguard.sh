#!/bin/bash

# Stop and disable blockbook service
sudo systemctl stop blockbook-ethereum-testnet-vanguard
sudo systemctl disable blockbook-ethereum-testnet-vanguard

# Remove blockbook service unit file
sudo rm /etc/systemd/system/blockbook-ethereum-testnet-vanguard.service 

# Reload systemd configuration
sudo systemctl daemon-reload

# Purge blockbook package (if installed via apt)
sudo apt purge blockbook-ethereum-testnet-vanguard -y

# Repeat for backend service
sudo systemctl stop backend-ethereum-testnet-vanguard
sudo systemctl disable backend-ethereum-testnet-vanguard
sudo rm /etc/systemd/system/backend-ethereum-testnet-vanguard.service 
sudo systemctl daemon-reload
sudo apt purge backend-ethereum-testnet-vanguard -y

# Remove installation directory
sudo rm -r /opt/coins

# Install backend package
sudo apt install ./build/backend-ethereum-testnet-vanguard_2.58.1-satoshilabs-1_amd64.deb -y && sudo systemctl start backend-ethereum-testnet-vanguard.service

# Install blockbook package
sudo apt install ./build/blockbook-ethereum-testnet-vanguard_0.4.0_amd64.deb -y && sudo systemctl start blockbook-ethereum-testnet-vanguard.service

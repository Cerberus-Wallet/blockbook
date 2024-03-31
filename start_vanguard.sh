#!/bin/bash


# Install backend package
sudo apt install ./build/backend-ethereum-testnet-vanguard_2.58.1-satoshilabs-1_amd64.deb -y && sudo systemctl start backend-ethereum-testnet-vanguard.service

# Install blockbook package
sudo apt install ./build/blockbook-ethereum-testnet-vanguard_0.4.0_amd64.deb -y && sudo systemctl start blockbook-ethereum-testnet-vanguard.service

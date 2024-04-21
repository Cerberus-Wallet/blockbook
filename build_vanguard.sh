#!/bin/bash

# Stop and disable blockbook service
sudo make clean
sudo make PORTABLE=1 all-vanar_vanguard
# sudo make deb-blockbook-ethereum_testnet_vanguard
# sudo make deb-backend-ethereum_testnet_vanguard

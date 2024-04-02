#!/bin/bash


# Install backend package
sudo apt install ./backend-ethereum-archive_2.58.1-satoshilabs-1_amd64.deb -y && sudo systemctl start backend-ethereum-archive.service

# Install blockbook package
sudo apt install ./blockbook-ethereum-archive_0.4.0_amd64.deb -y && sudo systemctl start blockbook-ethereum-archive.service

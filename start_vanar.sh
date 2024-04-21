#!/bin/bash


# Install backend package
sudo apt install ./build/backend-vanar_2.58.1-satoshilabs-1_amd64.deb -y && sudo systemctl start backend-vanar.service

# Install blockbook package
sudo apt install ./build/blockbook-vanar_0.4.0_amd64.deb -y && sudo systemctl start blockbook-vanar.service

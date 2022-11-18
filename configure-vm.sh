#!/bin/bash

# Install packages
sudo apt update -y
sudo apt install net-tools --no-install-recommends

# allow non-root user to run docker
sudo groupadd docker
sudo usermod -aG docker $(whoami)

# Enable IP Forwarding
sudo sysctl -w net.ipv4.ip_forward=1

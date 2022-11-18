#!/bin/bash

# Install packages
sudo apt update -y
sudo apt install net-tools --no-install-recommends

# Enable IP Forwarding
sudo sysctl -w net.ipv4.ip_forward=1

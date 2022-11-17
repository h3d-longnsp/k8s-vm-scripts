#!/bin/bash

# install packages
sudo apt update -y
sudo apt install git telnet bind9-utils net-tools bash-completion -y
source /etc/profile.d/bash_completion.sh

#Enable IP Forwarding
sudo sysctl -w net.ipv4.ip_forward=1

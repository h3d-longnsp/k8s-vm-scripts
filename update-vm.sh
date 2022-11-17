#!/bin/bash

network_config="/etc/netplan/*.yaml"
NAME=$1
IP=$2

if [ $# -eq 2 ]
then
  sudo sed -i "/192.168.*.*\/24/c\      - $IP\/24" $network_config
  sudo hostnamectl set-hostname "$NAME"
  sudo netplan apply
else
  echo "Usage: ./update-vm.sh <New-Hostname> <New-IP>"
fi

#!/bin/bash
# vim: set ts=2 sw=2 expandtab

# disable ufw on ubuntu
sudo ufw disable 2>/dev/null|| true

# Copy over config files
sudo mkdir -p /etc/rancher/k3s/
if [ ! -d /etc/rancher/k3s/config.yaml.d ]; then
  sudo ln -s $(realpath ./config.yaml.d) /etc/rancher/k3s
fi

curl -sfL https://get.k3s.io -o ./.get-k3s
chmod +x ./.get-k3s

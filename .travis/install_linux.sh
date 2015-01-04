#!/bin/bash

# Install Dependencies

echo "Install Ansible"
sudo apt-get install --yes --quiet software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update -qq
sudo apt-get install --yes --quiet ansible

echo "Install ansible-lint tool"
sudo pip install ansible-lint

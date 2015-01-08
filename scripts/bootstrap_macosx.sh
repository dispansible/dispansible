#!/bin/bash

# Install Dependencies

echo "Install Ansible"
brew update
brew install ansible

echo "Install ansible-lint tool"
sudo pip install ansible-lint

#!/bin/bash

# Install Dependencies

echo "Install Ansible and friends on Linux"
pip install ansible
pip install ansible-lint
ansible --version
ansible-lint --version


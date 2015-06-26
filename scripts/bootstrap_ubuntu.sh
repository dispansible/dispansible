#!/bin/sh

if [ ! -x /usr/bin/ansible-playbook ]; then
  echo "Install Ansible"
  sudo apt-get install --yes --quiet software-properties-common
  sudo apt-add-repository --yes ppa:ansible/ansible
  sudo apt-get update -qq
  sudo apt-get install --yes --quiet ansible
fi

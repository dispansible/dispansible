#!/bin/bash

PLAYBOOK="playbook.yml"
INVENTORY="inventories/macosx"
COMMON_ARGS="--inventory-file=$INVENTORY $PLAYBOOK"

# Show Software Versions
ansible-playbook --version
ansible-lint --version¬

# Run Tests

cd $TRAVIS_BUILD_DIR/ansible

echo "Run ansible-lint"
ansible-lint $PLAYBOOK

echo "Run ansible syntax checks"
echo "ansible-playbook $COMMON_ARGS --syntax-check"

# TODO create some dynamic fake ansible tasks with rubber tool
echo "rubber testing stuff is pending..."

# Run Rubber against Travis worker

echo "Run dispansible"
cd $TRAVIS_BUILD_DIR
./dispansible all


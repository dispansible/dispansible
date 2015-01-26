#!/bin/bash

PLAYBOOK="playbook.yml"
INVENTORY="inventories/macosx"
COMMON_ARGS="--inventory-file=$INVENTORY $PLAYBOOK"

# Show Software Versions
ansible-playbook --version
ansible-lint --version¬

# Run Tests

cd $TRAVIS_BUILD_DIR/ansible

echo "Run ansible-lint (allowing failures for now)"
ansible-lint $PLAYBOOK

echo "Run ansible syntax checks"
echo "ansible-playbook $COMMON_ARGS --syntax-check"

# TODO create some dynamic fake ansible tasks with rubber tool
echo "rubber testing stuff is pending..."

# Run Rubber against Travis worker
cd $TRAVIS_BUILD_DIR

echo "Customize dispansible settings for Travis"
export DISPANSIBLE_SETTINGS_DIR=${TRAVIS_BUILD_DIR}/.travis/${TRAVIS_OS_NAME}

echo "Run dispansible"
./dispansible all

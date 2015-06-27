#!/bin/bash

PLAYBOOK="playbook.yml"

# Show Software Versions
ansible-playbook --version
ansible-lint --version¬

# Run Tests

cd $TRAVIS_BUILD_DIR/ansible

echo "Run ansible-lint (allowing failures for now)"
ansible-lint $PLAYBOOK

echo "Run ansible syntax checks"
# use any inventory (macosx or linux) with localhost as single machine
ansible-playbook --inventory-file=inventories/macosx --syntax-check $PLAYBOOK

echo "Customize dispansible settings for Travis"
export DISPANSIBLE_SETTINGS_DIR="${TRAVIS_BUILD_DIR}/tests/travis/${TRAVIS_OS_NAME}"

echo "Run dispansible"
cd $TRAVIS_BUILD_DIR
./dispansible all

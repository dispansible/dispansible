#!/bin/bash


echo "Check that expected software is now available"

echo "check openzfs:"
zpool --help || exit 1

echo "check git settings:"
git --version || exit 1
git config --global --list | grep -i gruffalo || exit 1

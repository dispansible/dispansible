#!/bin/bash

OS_FAMILY=`uname -s`

echo "Check that expected software is now available"

if [ "$OS_FAMILY" == "Darwin" ]; then
  echo "check openzfs:"
  zpool --help || exit 1
fi

echo "check git settings:"
git --version || exit 1
git config --global --list | grep -i gruffalo || exit 1

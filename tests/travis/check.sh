#!/bin/bash

OS_FAMILY=`uname -s`

echo "Check that expected software is now available"

if [ "$OS_FAMILY" == "Darwin" ]; then
  echo "check openzfs:"
  zpool --help || exit 1

  echo "check virtualbox absence:"
  NEGATIVE_CHECK=$(VBoxManage --version)
  if [ "$NEGATIVE_CHECK" != "" ]; then
    echo "virtualbox should not be installed, but version $NEGATIVE_CHECK was found!"
    exit 2
  fi
else
  echo "check virtualbox version:"
  EXPECTED_VBOX_VERSION="4.3.28r100309"
  POSITIVE_CHECK=$(VBoxManage --version)
  OBSERVED_VBOX_VERSION=${POSITIVE_CHECK: -12}
  if [ "$OBSERVED_VBOX_VERSION" != "$EXPECTED_VBOX_VERSION" ]; then
    echo "virtualbox is not installed as expected. Version found: $OBSERVED_VBOX_VERSION instead of $EXPECTED_VBOX_VERSION!"
    exit 2
  fi
fi

echo "show git version"
git --version || exit 3
echo "check git global settings:"
git config --global --list
git config --global --list | grep -i gruffalo || exit 4

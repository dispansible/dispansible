#!/bin/bash

echo "Remove software preinstalled on the Linux Build Environment..."

rm $HOME/.profile

rm -rf $HOME/.rvm
rm -rf $HOME/.nvm

